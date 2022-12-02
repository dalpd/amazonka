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
-- Module      : Amazonka.CodeGuruReviewer.Types.RecommendationSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodeGuruReviewer.Types.RecommendationSummary where

import Amazonka.CodeGuruReviewer.Types.RecommendationCategory
import Amazonka.CodeGuruReviewer.Types.RuleMetadata
import Amazonka.CodeGuruReviewer.Types.Severity
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Information about recommendations.
--
-- /See:/ 'newRecommendationSummary' smart constructor.
data RecommendationSummary = RecommendationSummary'
  { -- | The severity of the issue in the code that generated this
    -- recommendation.
    severity :: Prelude.Maybe Severity,
    -- | Name of the file on which a recommendation is provided.
    filePath :: Prelude.Maybe Prelude.Text,
    -- | Last line where the recommendation is applicable in the source commit or
    -- source branch. For a single line comment the start line and end line
    -- values are the same.
    endLine :: Prelude.Maybe Prelude.Int,
    -- | The recommendation ID that can be used to track the provided
    -- recommendations. Later on it can be used to collect the feedback.
    recommendationId :: Prelude.Maybe Prelude.Text,
    -- | Metadata about a rule. Rule metadata includes an ID, a name, a list of
    -- tags, and a short and long description. CodeGuru Reviewer uses rules to
    -- analyze code. A rule\'s recommendation is included in analysis results
    -- if code is detected that violates the rule.
    ruleMetadata :: Prelude.Maybe RuleMetadata,
    -- | A description of the recommendation generated by CodeGuru Reviewer for
    -- the lines of code between the start line and the end line.
    description :: Prelude.Maybe Prelude.Text,
    -- | Start line from where the recommendation is applicable in the source
    -- commit or source branch.
    startLine :: Prelude.Maybe Prelude.Int,
    -- | The type of a recommendation.
    recommendationCategory :: Prelude.Maybe RecommendationCategory
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecommendationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severity', 'recommendationSummary_severity' - The severity of the issue in the code that generated this
-- recommendation.
--
-- 'filePath', 'recommendationSummary_filePath' - Name of the file on which a recommendation is provided.
--
-- 'endLine', 'recommendationSummary_endLine' - Last line where the recommendation is applicable in the source commit or
-- source branch. For a single line comment the start line and end line
-- values are the same.
--
-- 'recommendationId', 'recommendationSummary_recommendationId' - The recommendation ID that can be used to track the provided
-- recommendations. Later on it can be used to collect the feedback.
--
-- 'ruleMetadata', 'recommendationSummary_ruleMetadata' - Metadata about a rule. Rule metadata includes an ID, a name, a list of
-- tags, and a short and long description. CodeGuru Reviewer uses rules to
-- analyze code. A rule\'s recommendation is included in analysis results
-- if code is detected that violates the rule.
--
-- 'description', 'recommendationSummary_description' - A description of the recommendation generated by CodeGuru Reviewer for
-- the lines of code between the start line and the end line.
--
-- 'startLine', 'recommendationSummary_startLine' - Start line from where the recommendation is applicable in the source
-- commit or source branch.
--
-- 'recommendationCategory', 'recommendationSummary_recommendationCategory' - The type of a recommendation.
newRecommendationSummary ::
  RecommendationSummary
newRecommendationSummary =
  RecommendationSummary'
    { severity = Prelude.Nothing,
      filePath = Prelude.Nothing,
      endLine = Prelude.Nothing,
      recommendationId = Prelude.Nothing,
      ruleMetadata = Prelude.Nothing,
      description = Prelude.Nothing,
      startLine = Prelude.Nothing,
      recommendationCategory = Prelude.Nothing
    }

-- | The severity of the issue in the code that generated this
-- recommendation.
recommendationSummary_severity :: Lens.Lens' RecommendationSummary (Prelude.Maybe Severity)
recommendationSummary_severity = Lens.lens (\RecommendationSummary' {severity} -> severity) (\s@RecommendationSummary' {} a -> s {severity = a} :: RecommendationSummary)

-- | Name of the file on which a recommendation is provided.
recommendationSummary_filePath :: Lens.Lens' RecommendationSummary (Prelude.Maybe Prelude.Text)
recommendationSummary_filePath = Lens.lens (\RecommendationSummary' {filePath} -> filePath) (\s@RecommendationSummary' {} a -> s {filePath = a} :: RecommendationSummary)

-- | Last line where the recommendation is applicable in the source commit or
-- source branch. For a single line comment the start line and end line
-- values are the same.
recommendationSummary_endLine :: Lens.Lens' RecommendationSummary (Prelude.Maybe Prelude.Int)
recommendationSummary_endLine = Lens.lens (\RecommendationSummary' {endLine} -> endLine) (\s@RecommendationSummary' {} a -> s {endLine = a} :: RecommendationSummary)

-- | The recommendation ID that can be used to track the provided
-- recommendations. Later on it can be used to collect the feedback.
recommendationSummary_recommendationId :: Lens.Lens' RecommendationSummary (Prelude.Maybe Prelude.Text)
recommendationSummary_recommendationId = Lens.lens (\RecommendationSummary' {recommendationId} -> recommendationId) (\s@RecommendationSummary' {} a -> s {recommendationId = a} :: RecommendationSummary)

-- | Metadata about a rule. Rule metadata includes an ID, a name, a list of
-- tags, and a short and long description. CodeGuru Reviewer uses rules to
-- analyze code. A rule\'s recommendation is included in analysis results
-- if code is detected that violates the rule.
recommendationSummary_ruleMetadata :: Lens.Lens' RecommendationSummary (Prelude.Maybe RuleMetadata)
recommendationSummary_ruleMetadata = Lens.lens (\RecommendationSummary' {ruleMetadata} -> ruleMetadata) (\s@RecommendationSummary' {} a -> s {ruleMetadata = a} :: RecommendationSummary)

-- | A description of the recommendation generated by CodeGuru Reviewer for
-- the lines of code between the start line and the end line.
recommendationSummary_description :: Lens.Lens' RecommendationSummary (Prelude.Maybe Prelude.Text)
recommendationSummary_description = Lens.lens (\RecommendationSummary' {description} -> description) (\s@RecommendationSummary' {} a -> s {description = a} :: RecommendationSummary)

-- | Start line from where the recommendation is applicable in the source
-- commit or source branch.
recommendationSummary_startLine :: Lens.Lens' RecommendationSummary (Prelude.Maybe Prelude.Int)
recommendationSummary_startLine = Lens.lens (\RecommendationSummary' {startLine} -> startLine) (\s@RecommendationSummary' {} a -> s {startLine = a} :: RecommendationSummary)

-- | The type of a recommendation.
recommendationSummary_recommendationCategory :: Lens.Lens' RecommendationSummary (Prelude.Maybe RecommendationCategory)
recommendationSummary_recommendationCategory = Lens.lens (\RecommendationSummary' {recommendationCategory} -> recommendationCategory) (\s@RecommendationSummary' {} a -> s {recommendationCategory = a} :: RecommendationSummary)

instance Data.FromJSON RecommendationSummary where
  parseJSON =
    Data.withObject
      "RecommendationSummary"
      ( \x ->
          RecommendationSummary'
            Prelude.<$> (x Data..:? "Severity")
            Prelude.<*> (x Data..:? "FilePath")
            Prelude.<*> (x Data..:? "EndLine")
            Prelude.<*> (x Data..:? "RecommendationId")
            Prelude.<*> (x Data..:? "RuleMetadata")
            Prelude.<*> (x Data..:? "Description")
            Prelude.<*> (x Data..:? "StartLine")
            Prelude.<*> (x Data..:? "RecommendationCategory")
      )

instance Prelude.Hashable RecommendationSummary where
  hashWithSalt _salt RecommendationSummary' {..} =
    _salt `Prelude.hashWithSalt` severity
      `Prelude.hashWithSalt` filePath
      `Prelude.hashWithSalt` endLine
      `Prelude.hashWithSalt` recommendationId
      `Prelude.hashWithSalt` ruleMetadata
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` startLine
      `Prelude.hashWithSalt` recommendationCategory

instance Prelude.NFData RecommendationSummary where
  rnf RecommendationSummary' {..} =
    Prelude.rnf severity
      `Prelude.seq` Prelude.rnf filePath
      `Prelude.seq` Prelude.rnf endLine
      `Prelude.seq` Prelude.rnf recommendationId
      `Prelude.seq` Prelude.rnf ruleMetadata
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf startLine
      `Prelude.seq` Prelude.rnf recommendationCategory
