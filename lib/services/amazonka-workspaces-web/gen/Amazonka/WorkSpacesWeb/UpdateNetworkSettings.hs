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
-- Module      : Amazonka.WorkSpacesWeb.UpdateNetworkSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates network settings.
module Amazonka.WorkSpacesWeb.UpdateNetworkSettings
  ( -- * Creating a Request
    UpdateNetworkSettings (..),
    newUpdateNetworkSettings,

    -- * Request Lenses
    updateNetworkSettings_clientToken,
    updateNetworkSettings_securityGroupIds,
    updateNetworkSettings_vpcId,
    updateNetworkSettings_subnetIds,
    updateNetworkSettings_networkSettingsArn,

    -- * Destructuring the Response
    UpdateNetworkSettingsResponse (..),
    newUpdateNetworkSettingsResponse,

    -- * Response Lenses
    updateNetworkSettingsResponse_httpStatus,
    updateNetworkSettingsResponse_networkSettings,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newUpdateNetworkSettings' smart constructor.
data UpdateNetworkSettings = UpdateNetworkSettings'
  { -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Idempotency ensures that an API request
    -- completes only once. With an idempotent request, if the original request
    -- completes successfully, subsequent retries with the same client token
    -- return the result from the original successful request.
    --
    -- If you do not specify a client token, one is automatically generated by
    -- the AWS SDK.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | One or more security groups used to control access from streaming
    -- instances to your VPC.
    securityGroupIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The VPC that streaming instances will connect to.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The subnets in which network interfaces are created to connect streaming
    -- instances to your VPC. At least two of these subnets must be in
    -- different availability zones.
    subnetIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The ARN of the network settings.
    networkSettingsArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNetworkSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateNetworkSettings_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- return the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
--
-- 'securityGroupIds', 'updateNetworkSettings_securityGroupIds' - One or more security groups used to control access from streaming
-- instances to your VPC.
--
-- 'vpcId', 'updateNetworkSettings_vpcId' - The VPC that streaming instances will connect to.
--
-- 'subnetIds', 'updateNetworkSettings_subnetIds' - The subnets in which network interfaces are created to connect streaming
-- instances to your VPC. At least two of these subnets must be in
-- different availability zones.
--
-- 'networkSettingsArn', 'updateNetworkSettings_networkSettingsArn' - The ARN of the network settings.
newUpdateNetworkSettings ::
  -- | 'networkSettingsArn'
  Prelude.Text ->
  UpdateNetworkSettings
newUpdateNetworkSettings pNetworkSettingsArn_ =
  UpdateNetworkSettings'
    { clientToken =
        Prelude.Nothing,
      securityGroupIds = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      networkSettingsArn = pNetworkSettingsArn_
    }

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- return the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
updateNetworkSettings_clientToken :: Lens.Lens' UpdateNetworkSettings (Prelude.Maybe Prelude.Text)
updateNetworkSettings_clientToken = Lens.lens (\UpdateNetworkSettings' {clientToken} -> clientToken) (\s@UpdateNetworkSettings' {} a -> s {clientToken = a} :: UpdateNetworkSettings)

-- | One or more security groups used to control access from streaming
-- instances to your VPC.
updateNetworkSettings_securityGroupIds :: Lens.Lens' UpdateNetworkSettings (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateNetworkSettings_securityGroupIds = Lens.lens (\UpdateNetworkSettings' {securityGroupIds} -> securityGroupIds) (\s@UpdateNetworkSettings' {} a -> s {securityGroupIds = a} :: UpdateNetworkSettings) Prelude.. Lens.mapping Lens.coerced

-- | The VPC that streaming instances will connect to.
updateNetworkSettings_vpcId :: Lens.Lens' UpdateNetworkSettings (Prelude.Maybe Prelude.Text)
updateNetworkSettings_vpcId = Lens.lens (\UpdateNetworkSettings' {vpcId} -> vpcId) (\s@UpdateNetworkSettings' {} a -> s {vpcId = a} :: UpdateNetworkSettings)

-- | The subnets in which network interfaces are created to connect streaming
-- instances to your VPC. At least two of these subnets must be in
-- different availability zones.
updateNetworkSettings_subnetIds :: Lens.Lens' UpdateNetworkSettings (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateNetworkSettings_subnetIds = Lens.lens (\UpdateNetworkSettings' {subnetIds} -> subnetIds) (\s@UpdateNetworkSettings' {} a -> s {subnetIds = a} :: UpdateNetworkSettings) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the network settings.
updateNetworkSettings_networkSettingsArn :: Lens.Lens' UpdateNetworkSettings Prelude.Text
updateNetworkSettings_networkSettingsArn = Lens.lens (\UpdateNetworkSettings' {networkSettingsArn} -> networkSettingsArn) (\s@UpdateNetworkSettings' {} a -> s {networkSettingsArn = a} :: UpdateNetworkSettings)

instance Core.AWSRequest UpdateNetworkSettings where
  type
    AWSResponse UpdateNetworkSettings =
      UpdateNetworkSettingsResponse
  request overrides =
    Request.patchJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateNetworkSettingsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "networkSettings")
      )

instance Prelude.Hashable UpdateNetworkSettings where
  hashWithSalt _salt UpdateNetworkSettings' {..} =
    _salt `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` securityGroupIds
      `Prelude.hashWithSalt` vpcId
      `Prelude.hashWithSalt` subnetIds
      `Prelude.hashWithSalt` networkSettingsArn

instance Prelude.NFData UpdateNetworkSettings where
  rnf UpdateNetworkSettings' {..} =
    Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf securityGroupIds
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf networkSettingsArn

instance Data.ToHeaders UpdateNetworkSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON UpdateNetworkSettings where
  toJSON UpdateNetworkSettings' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("clientToken" Data..=) Prelude.<$> clientToken,
            ("securityGroupIds" Data..=)
              Prelude.<$> securityGroupIds,
            ("vpcId" Data..=) Prelude.<$> vpcId,
            ("subnetIds" Data..=) Prelude.<$> subnetIds
          ]
      )

instance Data.ToPath UpdateNetworkSettings where
  toPath UpdateNetworkSettings' {..} =
    Prelude.mconcat
      ["/networkSettings/", Data.toBS networkSettingsArn]

instance Data.ToQuery UpdateNetworkSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateNetworkSettingsResponse' smart constructor.
data UpdateNetworkSettingsResponse = UpdateNetworkSettingsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The network settings.
    networkSettings :: NetworkSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNetworkSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateNetworkSettingsResponse_httpStatus' - The response's http status code.
--
-- 'networkSettings', 'updateNetworkSettingsResponse_networkSettings' - The network settings.
newUpdateNetworkSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'networkSettings'
  NetworkSettings ->
  UpdateNetworkSettingsResponse
newUpdateNetworkSettingsResponse
  pHttpStatus_
  pNetworkSettings_ =
    UpdateNetworkSettingsResponse'
      { httpStatus =
          pHttpStatus_,
        networkSettings = pNetworkSettings_
      }

-- | The response's http status code.
updateNetworkSettingsResponse_httpStatus :: Lens.Lens' UpdateNetworkSettingsResponse Prelude.Int
updateNetworkSettingsResponse_httpStatus = Lens.lens (\UpdateNetworkSettingsResponse' {httpStatus} -> httpStatus) (\s@UpdateNetworkSettingsResponse' {} a -> s {httpStatus = a} :: UpdateNetworkSettingsResponse)

-- | The network settings.
updateNetworkSettingsResponse_networkSettings :: Lens.Lens' UpdateNetworkSettingsResponse NetworkSettings
updateNetworkSettingsResponse_networkSettings = Lens.lens (\UpdateNetworkSettingsResponse' {networkSettings} -> networkSettings) (\s@UpdateNetworkSettingsResponse' {} a -> s {networkSettings = a} :: UpdateNetworkSettingsResponse)

instance Prelude.NFData UpdateNetworkSettingsResponse where
  rnf UpdateNetworkSettingsResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf networkSettings
