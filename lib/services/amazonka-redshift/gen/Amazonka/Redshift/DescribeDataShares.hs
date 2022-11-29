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
-- Module      : Amazonka.Redshift.DescribeDataShares
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shows the status of any inbound or outbound datashares available in the
-- specified account.
--
-- This operation returns paginated results.
module Amazonka.Redshift.DescribeDataShares
  ( -- * Creating a Request
    DescribeDataShares (..),
    newDescribeDataShares,

    -- * Request Lenses
    describeDataShares_marker,
    describeDataShares_maxRecords,
    describeDataShares_dataShareArn,

    -- * Destructuring the Response
    DescribeDataSharesResponse (..),
    newDescribeDataSharesResponse,

    -- * Response Lenses
    describeDataSharesResponse_marker,
    describeDataSharesResponse_dataShares,
    describeDataSharesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.Redshift.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeDataShares' smart constructor.
data DescribeDataShares = DescribeDataShares'
  { -- | An optional parameter that specifies the starting point to return a set
    -- of response records. When the results of a DescribeDataShares request
    -- exceed the value specified in @MaxRecords@, Amazon Web Services returns
    -- a value in the @Marker@ field of the response. You can retrieve the next
    -- set of response records by providing the returned marker value in the
    -- @Marker@ parameter and retrying the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of response records to return in each call. If the
    -- number of remaining response records exceeds the specified @MaxRecords@
    -- value, a value is returned in a @marker@ field of the response. You can
    -- retrieve the next set of records by retrying the command with the
    -- returned marker value.
    maxRecords :: Prelude.Maybe Prelude.Int,
    -- | The identifier of the datashare to describe details of.
    dataShareArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDataShares' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeDataShares_marker' - An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeDataShares request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
--
-- 'maxRecords', 'describeDataShares_maxRecords' - The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- 'dataShareArn', 'describeDataShares_dataShareArn' - The identifier of the datashare to describe details of.
newDescribeDataShares ::
  DescribeDataShares
newDescribeDataShares =
  DescribeDataShares'
    { marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing,
      dataShareArn = Prelude.Nothing
    }

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeDataShares request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
describeDataShares_marker :: Lens.Lens' DescribeDataShares (Prelude.Maybe Prelude.Text)
describeDataShares_marker = Lens.lens (\DescribeDataShares' {marker} -> marker) (\s@DescribeDataShares' {} a -> s {marker = a} :: DescribeDataShares)

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
describeDataShares_maxRecords :: Lens.Lens' DescribeDataShares (Prelude.Maybe Prelude.Int)
describeDataShares_maxRecords = Lens.lens (\DescribeDataShares' {maxRecords} -> maxRecords) (\s@DescribeDataShares' {} a -> s {maxRecords = a} :: DescribeDataShares)

-- | The identifier of the datashare to describe details of.
describeDataShares_dataShareArn :: Lens.Lens' DescribeDataShares (Prelude.Maybe Prelude.Text)
describeDataShares_dataShareArn = Lens.lens (\DescribeDataShares' {dataShareArn} -> dataShareArn) (\s@DescribeDataShares' {} a -> s {dataShareArn = a} :: DescribeDataShares)

instance Core.AWSPager DescribeDataShares where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeDataSharesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeDataSharesResponse_dataShares
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeDataShares_marker
          Lens..~ rs
          Lens.^? describeDataSharesResponse_marker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeDataShares where
  type
    AWSResponse DescribeDataShares =
      DescribeDataSharesResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response =
    Response.receiveXMLWrapper
      "DescribeDataSharesResult"
      ( \s h x ->
          DescribeDataSharesResponse'
            Prelude.<$> (x Core..@? "Marker")
            Prelude.<*> ( x Core..@? "DataShares" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDataShares where
  hashWithSalt _salt DescribeDataShares' {..} =
    _salt `Prelude.hashWithSalt` marker
      `Prelude.hashWithSalt` maxRecords
      `Prelude.hashWithSalt` dataShareArn

instance Prelude.NFData DescribeDataShares where
  rnf DescribeDataShares' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf maxRecords
      `Prelude.seq` Prelude.rnf dataShareArn

instance Core.ToHeaders DescribeDataShares where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDataShares where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeDataShares where
  toQuery DescribeDataShares' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeDataShares" :: Prelude.ByteString),
        "Version"
          Core.=: ("2012-12-01" :: Prelude.ByteString),
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords,
        "DataShareArn" Core.=: dataShareArn
      ]

-- | /See:/ 'newDescribeDataSharesResponse' smart constructor.
data DescribeDataSharesResponse = DescribeDataSharesResponse'
  { -- | An optional parameter that specifies the starting point to return a set
    -- of response records. When the results of a DescribeDataShares request
    -- exceed the value specified in @MaxRecords@, Amazon Web Services returns
    -- a value in the @Marker@ field of the response. You can retrieve the next
    -- set of response records by providing the returned marker value in the
    -- @Marker@ parameter and retrying the request.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The results returned from describing datashares.
    dataShares :: Prelude.Maybe [DataShare],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDataSharesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'marker', 'describeDataSharesResponse_marker' - An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeDataShares request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
--
-- 'dataShares', 'describeDataSharesResponse_dataShares' - The results returned from describing datashares.
--
-- 'httpStatus', 'describeDataSharesResponse_httpStatus' - The response's http status code.
newDescribeDataSharesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDataSharesResponse
newDescribeDataSharesResponse pHttpStatus_ =
  DescribeDataSharesResponse'
    { marker =
        Prelude.Nothing,
      dataShares = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeDataShares request
-- exceed the value specified in @MaxRecords@, Amazon Web Services returns
-- a value in the @Marker@ field of the response. You can retrieve the next
-- set of response records by providing the returned marker value in the
-- @Marker@ parameter and retrying the request.
describeDataSharesResponse_marker :: Lens.Lens' DescribeDataSharesResponse (Prelude.Maybe Prelude.Text)
describeDataSharesResponse_marker = Lens.lens (\DescribeDataSharesResponse' {marker} -> marker) (\s@DescribeDataSharesResponse' {} a -> s {marker = a} :: DescribeDataSharesResponse)

-- | The results returned from describing datashares.
describeDataSharesResponse_dataShares :: Lens.Lens' DescribeDataSharesResponse (Prelude.Maybe [DataShare])
describeDataSharesResponse_dataShares = Lens.lens (\DescribeDataSharesResponse' {dataShares} -> dataShares) (\s@DescribeDataSharesResponse' {} a -> s {dataShares = a} :: DescribeDataSharesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDataSharesResponse_httpStatus :: Lens.Lens' DescribeDataSharesResponse Prelude.Int
describeDataSharesResponse_httpStatus = Lens.lens (\DescribeDataSharesResponse' {httpStatus} -> httpStatus) (\s@DescribeDataSharesResponse' {} a -> s {httpStatus = a} :: DescribeDataSharesResponse)

instance Prelude.NFData DescribeDataSharesResponse where
  rnf DescribeDataSharesResponse' {..} =
    Prelude.rnf marker
      `Prelude.seq` Prelude.rnf dataShares
      `Prelude.seq` Prelude.rnf httpStatus
