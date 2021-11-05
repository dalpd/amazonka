{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DynamoDB.Types.BillingModeSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DynamoDB.Types.BillingModeSummary where

import qualified Amazonka.Core as Core
import Amazonka.DynamoDB.Types.BillingMode
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains the details for the read\/write capacity mode.
--
-- /See:/ 'newBillingModeSummary' smart constructor.
data BillingModeSummary = BillingModeSummary'
  { -- | Represents the time when @PAY_PER_REQUEST@ was last set as the
    -- read\/write capacity mode.
    lastUpdateToPayPerRequestDateTime :: Prelude.Maybe Core.POSIX,
    -- | Controls how you are charged for read and write throughput and how you
    -- manage capacity. This setting can be changed later.
    --
    -- -   @PROVISIONED@ - Sets the read\/write capacity mode to @PROVISIONED@.
    --     We recommend using @PROVISIONED@ for predictable workloads.
    --
    -- -   @PAY_PER_REQUEST@ - Sets the read\/write capacity mode to
    --     @PAY_PER_REQUEST@. We recommend using @PAY_PER_REQUEST@ for
    --     unpredictable workloads.
    billingMode :: Prelude.Maybe BillingMode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BillingModeSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdateToPayPerRequestDateTime', 'billingModeSummary_lastUpdateToPayPerRequestDateTime' - Represents the time when @PAY_PER_REQUEST@ was last set as the
-- read\/write capacity mode.
--
-- 'billingMode', 'billingModeSummary_billingMode' - Controls how you are charged for read and write throughput and how you
-- manage capacity. This setting can be changed later.
--
-- -   @PROVISIONED@ - Sets the read\/write capacity mode to @PROVISIONED@.
--     We recommend using @PROVISIONED@ for predictable workloads.
--
-- -   @PAY_PER_REQUEST@ - Sets the read\/write capacity mode to
--     @PAY_PER_REQUEST@. We recommend using @PAY_PER_REQUEST@ for
--     unpredictable workloads.
newBillingModeSummary ::
  BillingModeSummary
newBillingModeSummary =
  BillingModeSummary'
    { lastUpdateToPayPerRequestDateTime =
        Prelude.Nothing,
      billingMode = Prelude.Nothing
    }

-- | Represents the time when @PAY_PER_REQUEST@ was last set as the
-- read\/write capacity mode.
billingModeSummary_lastUpdateToPayPerRequestDateTime :: Lens.Lens' BillingModeSummary (Prelude.Maybe Prelude.UTCTime)
billingModeSummary_lastUpdateToPayPerRequestDateTime = Lens.lens (\BillingModeSummary' {lastUpdateToPayPerRequestDateTime} -> lastUpdateToPayPerRequestDateTime) (\s@BillingModeSummary' {} a -> s {lastUpdateToPayPerRequestDateTime = a} :: BillingModeSummary) Prelude.. Lens.mapping Core._Time

-- | Controls how you are charged for read and write throughput and how you
-- manage capacity. This setting can be changed later.
--
-- -   @PROVISIONED@ - Sets the read\/write capacity mode to @PROVISIONED@.
--     We recommend using @PROVISIONED@ for predictable workloads.
--
-- -   @PAY_PER_REQUEST@ - Sets the read\/write capacity mode to
--     @PAY_PER_REQUEST@. We recommend using @PAY_PER_REQUEST@ for
--     unpredictable workloads.
billingModeSummary_billingMode :: Lens.Lens' BillingModeSummary (Prelude.Maybe BillingMode)
billingModeSummary_billingMode = Lens.lens (\BillingModeSummary' {billingMode} -> billingMode) (\s@BillingModeSummary' {} a -> s {billingMode = a} :: BillingModeSummary)

instance Core.FromJSON BillingModeSummary where
  parseJSON =
    Core.withObject
      "BillingModeSummary"
      ( \x ->
          BillingModeSummary'
            Prelude.<$> (x Core..:? "LastUpdateToPayPerRequestDateTime")
            Prelude.<*> (x Core..:? "BillingMode")
      )

instance Prelude.Hashable BillingModeSummary

instance Prelude.NFData BillingModeSummary
