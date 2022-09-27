{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.RedshiftServerLess.Types.UsageLimitBreachAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RedshiftServerLess.Types.UsageLimitBreachAction
  ( UsageLimitBreachAction
      ( ..,
        UsageLimitBreachAction_Deactivate,
        UsageLimitBreachAction_Emit_metric,
        UsageLimitBreachAction_Log
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype UsageLimitBreachAction = UsageLimitBreachAction'
  { fromUsageLimitBreachAction ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern UsageLimitBreachAction_Deactivate :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Deactivate = UsageLimitBreachAction' "deactivate"

pattern UsageLimitBreachAction_Emit_metric :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Emit_metric = UsageLimitBreachAction' "emit-metric"

pattern UsageLimitBreachAction_Log :: UsageLimitBreachAction
pattern UsageLimitBreachAction_Log = UsageLimitBreachAction' "log"

{-# COMPLETE
  UsageLimitBreachAction_Deactivate,
  UsageLimitBreachAction_Emit_metric,
  UsageLimitBreachAction_Log,
  UsageLimitBreachAction'
  #-}
