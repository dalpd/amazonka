{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.WellArchitected.UpdateAnswer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the answer to a specific question in a workload review.
module Amazonka.WellArchitected.UpdateAnswer
  ( -- * Creating a Request
    UpdateAnswer (..),
    newUpdateAnswer,

    -- * Request Lenses
    updateAnswer_isApplicable,
    updateAnswer_selectedChoices,
    updateAnswer_reason,
    updateAnswer_notes,
    updateAnswer_choiceUpdates,
    updateAnswer_workloadId,
    updateAnswer_lensAlias,
    updateAnswer_questionId,

    -- * Destructuring the Response
    UpdateAnswerResponse (..),
    newUpdateAnswerResponse,

    -- * Response Lenses
    updateAnswerResponse_lensAlias,
    updateAnswerResponse_answer,
    updateAnswerResponse_workloadId,
    updateAnswerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WellArchitected.Types

-- | Input to update answer.
--
-- /See:/ 'newUpdateAnswer' smart constructor.
data UpdateAnswer = UpdateAnswer'
  { isApplicable :: Prelude.Maybe Prelude.Bool,
    selectedChoices :: Prelude.Maybe [Prelude.Text],
    -- | The reason why a question is not applicable to your workload.
    reason :: Prelude.Maybe AnswerReason,
    notes :: Prelude.Maybe Prelude.Text,
    -- | A list of choices to update on a question in your workload. The String
    -- key corresponds to the choice ID to be updated.
    choiceUpdates :: Prelude.Maybe (Prelude.HashMap Prelude.Text ChoiceUpdate),
    workloadId :: Prelude.Text,
    lensAlias :: Prelude.Text,
    questionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnswer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isApplicable', 'updateAnswer_isApplicable' - Undocumented member.
--
-- 'selectedChoices', 'updateAnswer_selectedChoices' - Undocumented member.
--
-- 'reason', 'updateAnswer_reason' - The reason why a question is not applicable to your workload.
--
-- 'notes', 'updateAnswer_notes' - Undocumented member.
--
-- 'choiceUpdates', 'updateAnswer_choiceUpdates' - A list of choices to update on a question in your workload. The String
-- key corresponds to the choice ID to be updated.
--
-- 'workloadId', 'updateAnswer_workloadId' - Undocumented member.
--
-- 'lensAlias', 'updateAnswer_lensAlias' - Undocumented member.
--
-- 'questionId', 'updateAnswer_questionId' - Undocumented member.
newUpdateAnswer ::
  -- | 'workloadId'
  Prelude.Text ->
  -- | 'lensAlias'
  Prelude.Text ->
  -- | 'questionId'
  Prelude.Text ->
  UpdateAnswer
newUpdateAnswer pWorkloadId_ pLensAlias_ pQuestionId_ =
  UpdateAnswer'
    { isApplicable = Prelude.Nothing,
      selectedChoices = Prelude.Nothing,
      reason = Prelude.Nothing,
      notes = Prelude.Nothing,
      choiceUpdates = Prelude.Nothing,
      workloadId = pWorkloadId_,
      lensAlias = pLensAlias_,
      questionId = pQuestionId_
    }

-- | Undocumented member.
updateAnswer_isApplicable :: Lens.Lens' UpdateAnswer (Prelude.Maybe Prelude.Bool)
updateAnswer_isApplicable = Lens.lens (\UpdateAnswer' {isApplicable} -> isApplicable) (\s@UpdateAnswer' {} a -> s {isApplicable = a} :: UpdateAnswer)

-- | Undocumented member.
updateAnswer_selectedChoices :: Lens.Lens' UpdateAnswer (Prelude.Maybe [Prelude.Text])
updateAnswer_selectedChoices = Lens.lens (\UpdateAnswer' {selectedChoices} -> selectedChoices) (\s@UpdateAnswer' {} a -> s {selectedChoices = a} :: UpdateAnswer) Prelude.. Lens.mapping Lens.coerced

-- | The reason why a question is not applicable to your workload.
updateAnswer_reason :: Lens.Lens' UpdateAnswer (Prelude.Maybe AnswerReason)
updateAnswer_reason = Lens.lens (\UpdateAnswer' {reason} -> reason) (\s@UpdateAnswer' {} a -> s {reason = a} :: UpdateAnswer)

-- | Undocumented member.
updateAnswer_notes :: Lens.Lens' UpdateAnswer (Prelude.Maybe Prelude.Text)
updateAnswer_notes = Lens.lens (\UpdateAnswer' {notes} -> notes) (\s@UpdateAnswer' {} a -> s {notes = a} :: UpdateAnswer)

-- | A list of choices to update on a question in your workload. The String
-- key corresponds to the choice ID to be updated.
updateAnswer_choiceUpdates :: Lens.Lens' UpdateAnswer (Prelude.Maybe (Prelude.HashMap Prelude.Text ChoiceUpdate))
updateAnswer_choiceUpdates = Lens.lens (\UpdateAnswer' {choiceUpdates} -> choiceUpdates) (\s@UpdateAnswer' {} a -> s {choiceUpdates = a} :: UpdateAnswer) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
updateAnswer_workloadId :: Lens.Lens' UpdateAnswer Prelude.Text
updateAnswer_workloadId = Lens.lens (\UpdateAnswer' {workloadId} -> workloadId) (\s@UpdateAnswer' {} a -> s {workloadId = a} :: UpdateAnswer)

-- | Undocumented member.
updateAnswer_lensAlias :: Lens.Lens' UpdateAnswer Prelude.Text
updateAnswer_lensAlias = Lens.lens (\UpdateAnswer' {lensAlias} -> lensAlias) (\s@UpdateAnswer' {} a -> s {lensAlias = a} :: UpdateAnswer)

-- | Undocumented member.
updateAnswer_questionId :: Lens.Lens' UpdateAnswer Prelude.Text
updateAnswer_questionId = Lens.lens (\UpdateAnswer' {questionId} -> questionId) (\s@UpdateAnswer' {} a -> s {questionId = a} :: UpdateAnswer)

instance Core.AWSRequest UpdateAnswer where
  type AWSResponse UpdateAnswer = UpdateAnswerResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAnswerResponse'
            Prelude.<$> (x Core..?> "LensAlias")
            Prelude.<*> (x Core..?> "Answer")
            Prelude.<*> (x Core..?> "WorkloadId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAnswer

instance Prelude.NFData UpdateAnswer

instance Core.ToHeaders UpdateAnswer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAnswer where
  toJSON UpdateAnswer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IsApplicable" Core..=) Prelude.<$> isApplicable,
            ("SelectedChoices" Core..=)
              Prelude.<$> selectedChoices,
            ("Reason" Core..=) Prelude.<$> reason,
            ("Notes" Core..=) Prelude.<$> notes,
            ("ChoiceUpdates" Core..=) Prelude.<$> choiceUpdates
          ]
      )

instance Core.ToPath UpdateAnswer where
  toPath UpdateAnswer' {..} =
    Prelude.mconcat
      [ "/workloads/",
        Core.toBS workloadId,
        "/lensReviews/",
        Core.toBS lensAlias,
        "/answers/",
        Core.toBS questionId
      ]

instance Core.ToQuery UpdateAnswer where
  toQuery = Prelude.const Prelude.mempty

-- | Output of a update answer call.
--
-- /See:/ 'newUpdateAnswerResponse' smart constructor.
data UpdateAnswerResponse = UpdateAnswerResponse'
  { lensAlias :: Prelude.Maybe Prelude.Text,
    answer :: Prelude.Maybe Answer,
    workloadId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAnswerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lensAlias', 'updateAnswerResponse_lensAlias' - Undocumented member.
--
-- 'answer', 'updateAnswerResponse_answer' - Undocumented member.
--
-- 'workloadId', 'updateAnswerResponse_workloadId' - Undocumented member.
--
-- 'httpStatus', 'updateAnswerResponse_httpStatus' - The response's http status code.
newUpdateAnswerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAnswerResponse
newUpdateAnswerResponse pHttpStatus_ =
  UpdateAnswerResponse'
    { lensAlias = Prelude.Nothing,
      answer = Prelude.Nothing,
      workloadId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateAnswerResponse_lensAlias :: Lens.Lens' UpdateAnswerResponse (Prelude.Maybe Prelude.Text)
updateAnswerResponse_lensAlias = Lens.lens (\UpdateAnswerResponse' {lensAlias} -> lensAlias) (\s@UpdateAnswerResponse' {} a -> s {lensAlias = a} :: UpdateAnswerResponse)

-- | Undocumented member.
updateAnswerResponse_answer :: Lens.Lens' UpdateAnswerResponse (Prelude.Maybe Answer)
updateAnswerResponse_answer = Lens.lens (\UpdateAnswerResponse' {answer} -> answer) (\s@UpdateAnswerResponse' {} a -> s {answer = a} :: UpdateAnswerResponse)

-- | Undocumented member.
updateAnswerResponse_workloadId :: Lens.Lens' UpdateAnswerResponse (Prelude.Maybe Prelude.Text)
updateAnswerResponse_workloadId = Lens.lens (\UpdateAnswerResponse' {workloadId} -> workloadId) (\s@UpdateAnswerResponse' {} a -> s {workloadId = a} :: UpdateAnswerResponse)

-- | The response's http status code.
updateAnswerResponse_httpStatus :: Lens.Lens' UpdateAnswerResponse Prelude.Int
updateAnswerResponse_httpStatus = Lens.lens (\UpdateAnswerResponse' {httpStatus} -> httpStatus) (\s@UpdateAnswerResponse' {} a -> s {httpStatus = a} :: UpdateAnswerResponse)

instance Prelude.NFData UpdateAnswerResponse
