{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.RegistrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RegistrationStatus
  ( RegistrationStatus
      ( ..,
        RegistrationStatus_COMPLETE,
        RegistrationStatus_FAILED,
        RegistrationStatus_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RegistrationStatus = RegistrationStatus'
  { fromRegistrationStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern RegistrationStatus_COMPLETE :: RegistrationStatus
pattern RegistrationStatus_COMPLETE = RegistrationStatus' "COMPLETE"

pattern RegistrationStatus_FAILED :: RegistrationStatus
pattern RegistrationStatus_FAILED = RegistrationStatus' "FAILED"

pattern RegistrationStatus_IN_PROGRESS :: RegistrationStatus
pattern RegistrationStatus_IN_PROGRESS = RegistrationStatus' "IN_PROGRESS"

{-# COMPLETE
  RegistrationStatus_COMPLETE,
  RegistrationStatus_FAILED,
  RegistrationStatus_IN_PROGRESS,
  RegistrationStatus'
  #-}