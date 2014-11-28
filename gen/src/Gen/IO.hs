{-# LANGUAGE BangPatterns      #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Gen.IO
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Gen.IO where

import           Control.Applicative
import           Control.Error
import           Control.Monad
import           Control.Monad.IO.Class
import qualified Data.Aeson             as A
import qualified Data.ByteString.Lazy   as LBS
import           Data.Jason             (eitherDecode')
import           Data.Jason.Types       hiding (object)
import           Data.Monoid
import           Data.Text              (Text)
import qualified Data.Text              as Text
import qualified Data.Text.IO           as Text
import qualified Data.Text.Lazy.IO      as LText
import           Gen.Filters
import           Gen.Types
import           System.Directory
import           System.FilePath
import           Text.EDE               (Template)
import qualified Text.EDE               as EDE

say :: MonadIO m => Text -> String -> m ()
say x msg = liftIO . Text.putStrLn $ "[ " <> y <> "] " <> Text.pack msg
  where
    y | n > 0     = x <> Text.replicate n " "
      | otherwise = x

    n = 17 - Text.length x

loadTemplates :: FilePath -> Script Templates
loadTemplates d = do
    f  <- Templates
        <$> load "cabal"
        <*> load "service"
        <*> load "readme"
        <*> load "example-cabal"
        <*> load "example-makefile"

    !x <- (,)
        <$> load "types-xml"
        <*> load "operation-xml"

    !j <- (,)
        <$> load "types-json"
        <*> load "operation-json"

    !q <- (,)
        <$> load "types-query"
        <*> load "operation-query"

    return $! f $ \case
        Json     -> j
        RestJson -> j
        Xml      -> x
        RestXml  -> x
        Query    -> q
        Ec2      -> q
  where
    load (path -> f) =
           say "Parse Template" f
        *> scriptIO (EDE.eitherParseFile f)
       >>= hoistEither

    path f = d </> f <.> "ede"

copyAssets :: FilePath -> FilePath -> Script ()
copyAssets s d = do
    fs <- map (combine s) . filter dots <$> scriptIO (getDirectoryContents s)
    scriptIO (mapM_ copy fs)
  where
    copy f@(dest -> p) = say "Copy Asset" p >> copyFile f p

    dest f = d </> takeFileName f

renderFile :: ToFilePath a
           => Text
           -> Template
           -> FilePath
           -> a
           -> A.Object
           -> Script ()
renderFile lbl t d p env = do
    createDir (dropFileName f)
    say lbl f
    txt <- hoistEither (EDE.eitherRenderWith genFilters t env)
    scriptIO (LText.writeFile f txt)
  where
    f = d </> toFilePath p

toEnv :: A.ToJSON a => a -> Script A.Object
toEnv x = case A.toJSON x of
    A.Object o -> right o
    e          -> left  ("Failed to extract JSON Object from: " ++ show e)

createDir :: MonadIO m => FilePath -> EitherT String m ()
createDir = scriptIO . createDirectoryIfMissing True

reqObject :: FromJSON a => FilePath -> Script a
reqObject f = loadObject f >>= hoistEither

optObject :: Text -> FilePath -> Script Object
optObject k = fmap (fromMaybe (mkObject [(k, Object mempty)]) . hush) . loadObject

loadObject :: FromJSON a => FilePath -> Script (Either String a)
loadObject f = scriptIO $ do
    p <- doesFileExist f
    when p (say "Parse Object" f)
    bool (return  . Left $ "Failed to find " ++ f)
         (eitherDecode' <$> LBS.readFile f)
         p