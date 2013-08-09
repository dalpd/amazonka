{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

-- |
-- Module      : Network.AWS.Route53.V20121212
-- Copyright   : (c) 2013 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.Route53.V20121212
    (
    -- * Hosted Zones
      CreateHostedZone         (..)
    , GetHostedZone            (..)
    , ListHostedZones          (..)
    , DeleteHostedZone         (..)

    -- * Record Sets
    , RecordAction             (..)
    , RecordType               (..)
    , ResourceRecordSet        (..)
    , ChangeResourceRecordSets (..)
    , ListResourceRecordSets   (..)
    , GetChange                (..)

    -- * Health Checks
    , CreateHealthCheck        (..)
    , GetHealthCheck           (..)
    , ListHealthChecks         (..)
    , DeleteHealthCheck        (..)

    -- * Response Types
    , module Types
    ) where

import Data.Aeson
import Data.ByteString                     (ByteString)
import Data.Text                           (Text)
import Network.AWS.Internal
import Network.AWS.Route53.V20121212.Types as Types

data R53

instance AWSService Route53 where
    service _ = Service "route53" (toBS route53Version) "route53.amazonaws.com"
        SigningVersion3 <$> currentRegion

route53Version :: Text
route53Version = "2011-01-01"

req :: (QueryString a, FromJSON b) => ByteString -> a -> AWS (RawRequest Route53 b)
req meth action qry = return $ (emptyRequest meth FormEncoded "" Nothing)
    { rqAction = Just action
    , rqQuery  = queryString qry
    }

body :: (Template a, FromJSON b) => Method -> Text -> a -> AWS (RawRequest R53 b)
body meth path tmpl =
    emptyRequest meth Xml (version <> "/" <> path) . Just <$> render tmpl

--
-- Hosted Zones
--

-- | Creates a new hosted zone.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_CreateHostedZone.html>
data CreateHostedZone = CreateHostedZone
    { chzCallerRef  :: !CallerRef
    , chzDomainName :: !Text
    , chzComment    :: !(Maybe Text)
    } deriving (Show)

$(deriveTmpl ''CreateHostedZone)

instance AWSRequest R53 CreateHostedZone CreateHostedZoneResponse where
    request = body POST "hostedzone"

-- | Gets information about a specified hosted zone.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_GetHostedZone.html>
newtype GetHostedZone = GetHostedZone ByteString
    deriving (Show, IsString, IsText)

instance AWSRequest R53 GetHostedZone GetHostedZoneResponse where
    request chk = req GET ("hostedzone/" <> toText chk) []

-- | Gets a list of the hosted zones that are associated with the
-- current AWS account.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_ListHostedZones.html>
data ListHostedZones = ListHostedZones
    { lhzMarker   :: !(Maybe Text)
    , lhzMaxItems :: !(Maybe Integer)
    } deriving (Show)

$(deriveQS' (lowerAll . dropLower) ''ListHostedZones)

instance AWSRequest R53 ListHostedZones ListHostedZonesResponse where
    request = req GET "hostedzone" . queryString

-- | Deletes a hosted zone.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_DeleteHostedZone.html>
newtype DeleteHostedZone = DeleteHostedZone Text
    deriving (Show, IsString, IsText)

instance AWSRequest R53 DeleteHostedZone DeleteHostedZoneResponse where
    request chk = req DELETE ("hostedzone/" <> toText chk) []

--
-- Record Sets
--

data ResourceRecordSet = ResourceRecordSet
    { rrsAction        :: !RecordAction
    , rrsName          :: !Text
    , rrsType          :: !RecordType
    , rrsTTL           :: !Integer
    , rrsHealthCheckId :: !(Maybe Text)
    , rrsValues        :: ![Text]
    } deriving (Show)

$(deriveToJSON underscoredFieldOptions ''ResourceRecordSet)

-- | Adds, deletes, and changes resource record sets in a Route 53 hosted zone.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_ChangeResourceRecordSets.html>
data ChangeResourceRecordSets = ChangeResourceRecordSets
    { crrsZoneId  :: !Text
    , crrsComment :: !(Maybe Text)
    , crrsChanges :: ![ResourceRecordSet]
    } deriving (Show)

$(deriveTmpl ''ChangeResourceRecordSets)

instance AWSRequest R53 ChangeResourceRecordSets Object where
    request rs@ChangeResourceRecordSets{..} =
        body POST ("hostedzone/" <> crrsZoneId <> "/rrset") rs

-- | Lists details about all of the resource record sets in a hosted zone.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_ListResourceRecordSets.html>
data ListResourceRecordSets = ListResourceRecordSets
    { lrrsZoneId     :: !Text
    , lrrsName       :: !(Maybe Text)
    , lrrsType       :: !(Maybe RecordType)
    , lrrsIdentifier :: !(Maybe Text)
    , lrrsMaxItems   :: !(Maybe Integer)
    } deriving (Show)

$(deriveQS' (lowerAll . dropLower) ''ListResourceRecordSets)

instance AWSRequest R53 ListResourceRecordSets Object where
    request rs@ListResourceRecordSets{..} =
        req GET ("hostedzone/" <> lrrsZoneId <> "/rrset") $ queryString rs

-- | Returns the current status of a change batch request that you
-- submitted by using ChangeResourceRecordSets.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_GetChange.html>
newtype GetChange = GetChange Text
    deriving (Show, IsString, IsText)

instance AWSRequest R53 GetChange Object where
    request chk = req GET ("change/" <> toText chk) []

--
-- Health Checks
--

-- | Creates a new health check.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_CreateHealthCheck.html>
data CreateHealthCheck = CreateHealthCheck
    { chcCallerRef         :: !CallerRef
    , chcHealthCheckConfig :: !HealthCheckConfig
    } deriving (Show)

$(deriveTmpl ''CreateHealthCheck)

instance AWSRequest R53 CreateHealthCheck Object where
    request = body POST "healthcheck"

-- | Gets information about a specified health check.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_GetHealthCheck.html>
newtype GetHealthCheck = GetHealthCheck Text
    deriving (Show, IsString, IsText)

instance AWSRequest R53 GetHealthCheck GetHealthCheckResponse where
    request chk = req GET ("healthcheck/" <> toText chk) []

-- | Gets a list of the health checks that are associated
-- with the current AWS account.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_ListHealthChecks.html>
data ListHealthChecks = ListHealthChecks
    { lhcMarker   :: !(Maybe Text)
    , lhcMaxItems :: !(Maybe Integer)
    } deriving (Show)

$(deriveQS' (lowerAll . dropLower) ''ListHealthChecks)

instance AWSRequest R53 ListHealthChecks ListHealthChecksResponse where
    request = req GET "healthcheck" . queryString

-- | Deletes a health check.
--
-- <http://docs.aws.amazon.com/R53/latest/APIReference/API_DeleteHealthCheck.html>
newtype DeleteHealthCheck = DeleteHealthCheck Text
    deriving (Show, IsString, IsText)

instance AWSRequest R53 DeleteHealthCheck DeleteHealthCheckResponse where
    request chk = req DELETE ("healthcheck/" <> toText chk) []