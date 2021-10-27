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
-- Module      : Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomaly
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomaly where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomalyResource
import Network.AWS.DevOpsGuru.Types.RecommendationRelatedAnomalySourceDetail
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an anomaly that is related to a recommendation.
--
-- /See:/ 'newRecommendationRelatedAnomaly' smart constructor.
data RecommendationRelatedAnomaly = RecommendationRelatedAnomaly'
  { -- | An array of objects that represent resources in which DevOps Guru
    -- detected anomalous behavior. Each object contains the name and type of
    -- the resource.
    resources :: Prelude.Maybe [RecommendationRelatedAnomalyResource],
    -- | Information about where the anomalous behavior related the
    -- recommendation was found. For example, details in Amazon CloudWatch
    -- metrics.
    sourceDetails :: Prelude.Maybe [RecommendationRelatedAnomalySourceDetail]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecommendationRelatedAnomaly' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resources', 'recommendationRelatedAnomaly_resources' - An array of objects that represent resources in which DevOps Guru
-- detected anomalous behavior. Each object contains the name and type of
-- the resource.
--
-- 'sourceDetails', 'recommendationRelatedAnomaly_sourceDetails' - Information about where the anomalous behavior related the
-- recommendation was found. For example, details in Amazon CloudWatch
-- metrics.
newRecommendationRelatedAnomaly ::
  RecommendationRelatedAnomaly
newRecommendationRelatedAnomaly =
  RecommendationRelatedAnomaly'
    { resources =
        Prelude.Nothing,
      sourceDetails = Prelude.Nothing
    }

-- | An array of objects that represent resources in which DevOps Guru
-- detected anomalous behavior. Each object contains the name and type of
-- the resource.
recommendationRelatedAnomaly_resources :: Lens.Lens' RecommendationRelatedAnomaly (Prelude.Maybe [RecommendationRelatedAnomalyResource])
recommendationRelatedAnomaly_resources = Lens.lens (\RecommendationRelatedAnomaly' {resources} -> resources) (\s@RecommendationRelatedAnomaly' {} a -> s {resources = a} :: RecommendationRelatedAnomaly) Prelude.. Lens.mapping Lens.coerced

-- | Information about where the anomalous behavior related the
-- recommendation was found. For example, details in Amazon CloudWatch
-- metrics.
recommendationRelatedAnomaly_sourceDetails :: Lens.Lens' RecommendationRelatedAnomaly (Prelude.Maybe [RecommendationRelatedAnomalySourceDetail])
recommendationRelatedAnomaly_sourceDetails = Lens.lens (\RecommendationRelatedAnomaly' {sourceDetails} -> sourceDetails) (\s@RecommendationRelatedAnomaly' {} a -> s {sourceDetails = a} :: RecommendationRelatedAnomaly) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RecommendationRelatedAnomaly where
  parseJSON =
    Core.withObject
      "RecommendationRelatedAnomaly"
      ( \x ->
          RecommendationRelatedAnomaly'
            Prelude.<$> (x Core..:? "Resources" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "SourceDetails" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    RecommendationRelatedAnomaly

instance Prelude.NFData RecommendationRelatedAnomaly
