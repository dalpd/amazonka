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
-- Module      : Network.AWS.Route53Resolver.Types.Filter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Resolver.Types.Filter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For Resolver list operations
-- (<https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html ListResolverEndpoints>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html ListResolverRules>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html ListResolverRuleAssociations>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html ListResolverQueryLogConfigs>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html ListResolverQueryLogConfigAssociations>),
-- and
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverDnssecConfigs.html ListResolverDnssecConfigs>),
-- an optional specification to return a subset of objects.
--
-- To filter objects, such as Resolver endpoints or Resolver rules, you
-- specify @Name@ and @Values@. For example, to list only inbound Resolver
-- endpoints, specify @Direction@ for @Name@ and specify @INBOUND@ for
-- @Values@.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter'
  { -- | When you\'re using a @List@ operation and you want the operation to
    -- return a subset of objects, such as Resolver endpoints or Resolver
    -- rules, the value of the parameter that you want to use to filter
    -- objects. For example, to list only inbound Resolver endpoints, specify
    -- @Direction@ for @Name@ and specify @INBOUND@ for @Values@.
    values :: Prelude.Maybe [Prelude.Text],
    -- | The name of the parameter that you want to use to filter objects.
    --
    -- The valid values for @Name@ depend on the action that you\'re including
    -- the filter in,
    -- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html ListResolverEndpoints>,
    -- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html ListResolverRules>,
    -- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html ListResolverRuleAssociations>,
    -- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html ListResolverQueryLogConfigs>,
    -- or
    -- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html ListResolverQueryLogConfigAssociations>.
    --
    -- In early versions of Resolver, values for @Name@ were listed as
    -- uppercase, with underscore (_) delimiters. For example,
    -- @CreatorRequestId@ was originally listed as @CREATOR_REQUEST_ID@.
    -- Uppercase values for @Name@ are still supported.
    --
    -- __ListResolverEndpoints__
    --
    -- Valid values for @Name@ include the following:
    --
    -- -   @CreatorRequestId@: The value that you specified when you created
    --     the Resolver endpoint.
    --
    -- -   @Direction@: Whether you want to return inbound or outbound Resolver
    --     endpoints. If you specify @DIRECTION@ for @Name@, specify @INBOUND@
    --     or @OUTBOUND@ for @Values@.
    --
    -- -   @HostVPCId@: The ID of the VPC that inbound DNS queries pass through
    --     on the way from your network to your VPCs in a region, or the VPC
    --     that outbound queries pass through on the way from your VPCs to your
    --     network. In a
    --     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html CreateResolverEndpoint>
    --     request, @SubnetId@ indirectly identifies the VPC. In a
    --     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html GetResolverEndpoint>
    --     request, the VPC ID for a Resolver endpoint is returned in the
    --     @HostVPCId@ element.
    --
    -- -   @IpAddressCount@: The number of IP addresses that you have
    --     associated with the Resolver endpoint.
    --
    -- -   @Name@: The name of the Resolver endpoint.
    --
    -- -   @SecurityGroupIds@: The IDs of the VPC security groups that you
    --     specified when you created the Resolver endpoint.
    --
    -- -   @Status@: The status of the Resolver endpoint. If you specify
    --     @Status@ for @Name@, specify one of the following status codes for
    --     @Values@: @CREATING@, @OPERATIONAL@, @UPDATING@, @AUTO_RECOVERING@,
    --     @ACTION_NEEDED@, or @DELETING@. For more information, see @Status@
    --     in
    --     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html ResolverEndpoint>.
    --
    -- __ListResolverRules__
    --
    -- Valid values for @Name@ include the following:
    --
    -- -   @CreatorRequestId@: The value that you specified when you created
    --     the Resolver rule.
    --
    -- -   @DomainName@: The domain name for which Resolver is forwarding DNS
    --     queries to your network. In the value that you specify for @Values@,
    --     include a trailing dot (.) after the domain name. For example, if
    --     the domain name is example.com, specify the following value. Note
    --     the \".\" after @com@:
    --
    --     @example.com.@
    --
    -- -   @Name@: The name of the Resolver rule.
    --
    -- -   @ResolverEndpointId@: The ID of the Resolver endpoint that the
    --     Resolver rule is associated with.
    --
    --     You can filter on the Resolver endpoint only for rules that have a
    --     value of @FORWARD@ for @RuleType@.
    --
    -- -   @Status@: The status of the Resolver rule. If you specify @Status@
    --     for @Name@, specify one of the following status codes for @Values@:
    --     @COMPLETE@, @DELETING@, @UPDATING@, or @FAILED@.
    --
    -- -   @Type@: The type of the Resolver rule. If you specify @TYPE@ for
    --     @Name@, specify @FORWARD@ or @SYSTEM@ for @Values@.
    --
    -- __ListResolverRuleAssociations__
    --
    -- Valid values for @Name@ include the following:
    --
    -- -   @Name@: The name of the Resolver rule association.
    --
    -- -   @ResolverRuleId@: The ID of the Resolver rule that is associated
    --     with one or more VPCs.
    --
    -- -   @Status@: The status of the Resolver rule association. If you
    --     specify @Status@ for @Name@, specify one of the following status
    --     codes for @Values@: @CREATING@, @COMPLETE@, @DELETING@, or @FAILED@.
    --
    -- -   @VPCId@: The ID of the VPC that the Resolver rule is associated
    --     with.
    --
    -- __ListResolverQueryLogConfigs__
    --
    -- Valid values for @Name@ include the following:
    --
    -- -   @Arn@: The ARN for the query logging configuration.
    --
    -- -   @AssociationCount@: The number of VPCs that are associated with the
    --     query logging configuration.
    --
    -- -   @CreationTime@: The date and time that the query logging
    --     configuration was created, in Unix time format and Coordinated
    --     Universal Time (UTC).
    --
    -- -   @CreatorRequestId@: A unique string that identifies the request that
    --     created the query logging configuration.
    --
    -- -   @Destination@: The Amazon Web Services service that you want to
    --     forward query logs to. Valid values include the following:
    --
    --     -   @S3@
    --
    --     -   @CloudWatchLogs@
    --
    --     -   @KinesisFirehose@
    --
    -- -   @DestinationArn@: The ARN of the location that Resolver is sending
    --     query logs to. This value can be the ARN for an S3 bucket, a
    --     CloudWatch Logs log group, or a Kinesis Data Firehose delivery
    --     stream.
    --
    -- -   @Id@: The ID of the query logging configuration
    --
    -- -   @Name@: The name of the query logging configuration
    --
    -- -   @OwnerId@: The Amazon Web Services account ID for the account that
    --     created the query logging configuration.
    --
    -- -   @ShareStatus@: An indication of whether the query logging
    --     configuration is shared with other Amazon Web Services accounts, or
    --     was shared with the current account by another Amazon Web Services
    --     account. Valid values include: @NOT_SHARED@, @SHARED_WITH_ME@, or
    --     @SHARED_BY_ME@.
    --
    -- -   @Status@: The status of the query logging configuration. If you
    --     specify @Status@ for @Name@, specify the applicable status code for
    --     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
    --     information, see
    --     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status Status>.
    --
    -- __ListResolverQueryLogConfigAssociations__
    --
    -- Valid values for @Name@ include the following:
    --
    -- -   @CreationTime@: The date and time that the VPC was associated with
    --     the query logging configuration, in Unix time format and Coordinated
    --     Universal Time (UTC).
    --
    -- -   @Error@: If the value of @Status@ is @FAILED@, specify the cause:
    --     @DESTINATION_NOT_FOUND@ or @ACCESS_DENIED@.
    --
    -- -   @Id@: The ID of the query logging association.
    --
    -- -   @ResolverQueryLogConfigId@: The ID of the query logging
    --     configuration that a VPC is associated with.
    --
    -- -   @ResourceId@: The ID of the Amazon VPC that is associated with the
    --     query logging configuration.
    --
    -- -   @Status@: The status of the query logging association. If you
    --     specify @Status@ for @Name@, specify the applicable status code for
    --     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
    --     information, see
    --     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status Status>.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Filter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'filter_values' - When you\'re using a @List@ operation and you want the operation to
-- return a subset of objects, such as Resolver endpoints or Resolver
-- rules, the value of the parameter that you want to use to filter
-- objects. For example, to list only inbound Resolver endpoints, specify
-- @Direction@ for @Name@ and specify @INBOUND@ for @Values@.
--
-- 'name', 'filter_name' - The name of the parameter that you want to use to filter objects.
--
-- The valid values for @Name@ depend on the action that you\'re including
-- the filter in,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html ListResolverEndpoints>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html ListResolverRules>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html ListResolverRuleAssociations>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html ListResolverQueryLogConfigs>,
-- or
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html ListResolverQueryLogConfigAssociations>.
--
-- In early versions of Resolver, values for @Name@ were listed as
-- uppercase, with underscore (_) delimiters. For example,
-- @CreatorRequestId@ was originally listed as @CREATOR_REQUEST_ID@.
-- Uppercase values for @Name@ are still supported.
--
-- __ListResolverEndpoints__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreatorRequestId@: The value that you specified when you created
--     the Resolver endpoint.
--
-- -   @Direction@: Whether you want to return inbound or outbound Resolver
--     endpoints. If you specify @DIRECTION@ for @Name@, specify @INBOUND@
--     or @OUTBOUND@ for @Values@.
--
-- -   @HostVPCId@: The ID of the VPC that inbound DNS queries pass through
--     on the way from your network to your VPCs in a region, or the VPC
--     that outbound queries pass through on the way from your VPCs to your
--     network. In a
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html CreateResolverEndpoint>
--     request, @SubnetId@ indirectly identifies the VPC. In a
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html GetResolverEndpoint>
--     request, the VPC ID for a Resolver endpoint is returned in the
--     @HostVPCId@ element.
--
-- -   @IpAddressCount@: The number of IP addresses that you have
--     associated with the Resolver endpoint.
--
-- -   @Name@: The name of the Resolver endpoint.
--
-- -   @SecurityGroupIds@: The IDs of the VPC security groups that you
--     specified when you created the Resolver endpoint.
--
-- -   @Status@: The status of the Resolver endpoint. If you specify
--     @Status@ for @Name@, specify one of the following status codes for
--     @Values@: @CREATING@, @OPERATIONAL@, @UPDATING@, @AUTO_RECOVERING@,
--     @ACTION_NEEDED@, or @DELETING@. For more information, see @Status@
--     in
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html ResolverEndpoint>.
--
-- __ListResolverRules__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreatorRequestId@: The value that you specified when you created
--     the Resolver rule.
--
-- -   @DomainName@: The domain name for which Resolver is forwarding DNS
--     queries to your network. In the value that you specify for @Values@,
--     include a trailing dot (.) after the domain name. For example, if
--     the domain name is example.com, specify the following value. Note
--     the \".\" after @com@:
--
--     @example.com.@
--
-- -   @Name@: The name of the Resolver rule.
--
-- -   @ResolverEndpointId@: The ID of the Resolver endpoint that the
--     Resolver rule is associated with.
--
--     You can filter on the Resolver endpoint only for rules that have a
--     value of @FORWARD@ for @RuleType@.
--
-- -   @Status@: The status of the Resolver rule. If you specify @Status@
--     for @Name@, specify one of the following status codes for @Values@:
--     @COMPLETE@, @DELETING@, @UPDATING@, or @FAILED@.
--
-- -   @Type@: The type of the Resolver rule. If you specify @TYPE@ for
--     @Name@, specify @FORWARD@ or @SYSTEM@ for @Values@.
--
-- __ListResolverRuleAssociations__
--
-- Valid values for @Name@ include the following:
--
-- -   @Name@: The name of the Resolver rule association.
--
-- -   @ResolverRuleId@: The ID of the Resolver rule that is associated
--     with one or more VPCs.
--
-- -   @Status@: The status of the Resolver rule association. If you
--     specify @Status@ for @Name@, specify one of the following status
--     codes for @Values@: @CREATING@, @COMPLETE@, @DELETING@, or @FAILED@.
--
-- -   @VPCId@: The ID of the VPC that the Resolver rule is associated
--     with.
--
-- __ListResolverQueryLogConfigs__
--
-- Valid values for @Name@ include the following:
--
-- -   @Arn@: The ARN for the query logging configuration.
--
-- -   @AssociationCount@: The number of VPCs that are associated with the
--     query logging configuration.
--
-- -   @CreationTime@: The date and time that the query logging
--     configuration was created, in Unix time format and Coordinated
--     Universal Time (UTC).
--
-- -   @CreatorRequestId@: A unique string that identifies the request that
--     created the query logging configuration.
--
-- -   @Destination@: The Amazon Web Services service that you want to
--     forward query logs to. Valid values include the following:
--
--     -   @S3@
--
--     -   @CloudWatchLogs@
--
--     -   @KinesisFirehose@
--
-- -   @DestinationArn@: The ARN of the location that Resolver is sending
--     query logs to. This value can be the ARN for an S3 bucket, a
--     CloudWatch Logs log group, or a Kinesis Data Firehose delivery
--     stream.
--
-- -   @Id@: The ID of the query logging configuration
--
-- -   @Name@: The name of the query logging configuration
--
-- -   @OwnerId@: The Amazon Web Services account ID for the account that
--     created the query logging configuration.
--
-- -   @ShareStatus@: An indication of whether the query logging
--     configuration is shared with other Amazon Web Services accounts, or
--     was shared with the current account by another Amazon Web Services
--     account. Valid values include: @NOT_SHARED@, @SHARED_WITH_ME@, or
--     @SHARED_BY_ME@.
--
-- -   @Status@: The status of the query logging configuration. If you
--     specify @Status@ for @Name@, specify the applicable status code for
--     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
--     information, see
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status Status>.
--
-- __ListResolverQueryLogConfigAssociations__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreationTime@: The date and time that the VPC was associated with
--     the query logging configuration, in Unix time format and Coordinated
--     Universal Time (UTC).
--
-- -   @Error@: If the value of @Status@ is @FAILED@, specify the cause:
--     @DESTINATION_NOT_FOUND@ or @ACCESS_DENIED@.
--
-- -   @Id@: The ID of the query logging association.
--
-- -   @ResolverQueryLogConfigId@: The ID of the query logging
--     configuration that a VPC is associated with.
--
-- -   @ResourceId@: The ID of the Amazon VPC that is associated with the
--     query logging configuration.
--
-- -   @Status@: The status of the query logging association. If you
--     specify @Status@ for @Name@, specify the applicable status code for
--     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
--     information, see
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status Status>.
newFilter ::
  Filter
newFilter =
  Filter'
    { values = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | When you\'re using a @List@ operation and you want the operation to
-- return a subset of objects, such as Resolver endpoints or Resolver
-- rules, the value of the parameter that you want to use to filter
-- objects. For example, to list only inbound Resolver endpoints, specify
-- @Direction@ for @Name@ and specify @INBOUND@ for @Values@.
filter_values :: Lens.Lens' Filter (Prelude.Maybe [Prelude.Text])
filter_values = Lens.lens (\Filter' {values} -> values) (\s@Filter' {} a -> s {values = a} :: Filter) Prelude.. Lens.mapping Lens.coerced

-- | The name of the parameter that you want to use to filter objects.
--
-- The valid values for @Name@ depend on the action that you\'re including
-- the filter in,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html ListResolverEndpoints>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html ListResolverRules>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html ListResolverRuleAssociations>,
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html ListResolverQueryLogConfigs>,
-- or
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html ListResolverQueryLogConfigAssociations>.
--
-- In early versions of Resolver, values for @Name@ were listed as
-- uppercase, with underscore (_) delimiters. For example,
-- @CreatorRequestId@ was originally listed as @CREATOR_REQUEST_ID@.
-- Uppercase values for @Name@ are still supported.
--
-- __ListResolverEndpoints__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreatorRequestId@: The value that you specified when you created
--     the Resolver endpoint.
--
-- -   @Direction@: Whether you want to return inbound or outbound Resolver
--     endpoints. If you specify @DIRECTION@ for @Name@, specify @INBOUND@
--     or @OUTBOUND@ for @Values@.
--
-- -   @HostVPCId@: The ID of the VPC that inbound DNS queries pass through
--     on the way from your network to your VPCs in a region, or the VPC
--     that outbound queries pass through on the way from your VPCs to your
--     network. In a
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html CreateResolverEndpoint>
--     request, @SubnetId@ indirectly identifies the VPC. In a
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html GetResolverEndpoint>
--     request, the VPC ID for a Resolver endpoint is returned in the
--     @HostVPCId@ element.
--
-- -   @IpAddressCount@: The number of IP addresses that you have
--     associated with the Resolver endpoint.
--
-- -   @Name@: The name of the Resolver endpoint.
--
-- -   @SecurityGroupIds@: The IDs of the VPC security groups that you
--     specified when you created the Resolver endpoint.
--
-- -   @Status@: The status of the Resolver endpoint. If you specify
--     @Status@ for @Name@, specify one of the following status codes for
--     @Values@: @CREATING@, @OPERATIONAL@, @UPDATING@, @AUTO_RECOVERING@,
--     @ACTION_NEEDED@, or @DELETING@. For more information, see @Status@
--     in
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html ResolverEndpoint>.
--
-- __ListResolverRules__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreatorRequestId@: The value that you specified when you created
--     the Resolver rule.
--
-- -   @DomainName@: The domain name for which Resolver is forwarding DNS
--     queries to your network. In the value that you specify for @Values@,
--     include a trailing dot (.) after the domain name. For example, if
--     the domain name is example.com, specify the following value. Note
--     the \".\" after @com@:
--
--     @example.com.@
--
-- -   @Name@: The name of the Resolver rule.
--
-- -   @ResolverEndpointId@: The ID of the Resolver endpoint that the
--     Resolver rule is associated with.
--
--     You can filter on the Resolver endpoint only for rules that have a
--     value of @FORWARD@ for @RuleType@.
--
-- -   @Status@: The status of the Resolver rule. If you specify @Status@
--     for @Name@, specify one of the following status codes for @Values@:
--     @COMPLETE@, @DELETING@, @UPDATING@, or @FAILED@.
--
-- -   @Type@: The type of the Resolver rule. If you specify @TYPE@ for
--     @Name@, specify @FORWARD@ or @SYSTEM@ for @Values@.
--
-- __ListResolverRuleAssociations__
--
-- Valid values for @Name@ include the following:
--
-- -   @Name@: The name of the Resolver rule association.
--
-- -   @ResolverRuleId@: The ID of the Resolver rule that is associated
--     with one or more VPCs.
--
-- -   @Status@: The status of the Resolver rule association. If you
--     specify @Status@ for @Name@, specify one of the following status
--     codes for @Values@: @CREATING@, @COMPLETE@, @DELETING@, or @FAILED@.
--
-- -   @VPCId@: The ID of the VPC that the Resolver rule is associated
--     with.
--
-- __ListResolverQueryLogConfigs__
--
-- Valid values for @Name@ include the following:
--
-- -   @Arn@: The ARN for the query logging configuration.
--
-- -   @AssociationCount@: The number of VPCs that are associated with the
--     query logging configuration.
--
-- -   @CreationTime@: The date and time that the query logging
--     configuration was created, in Unix time format and Coordinated
--     Universal Time (UTC).
--
-- -   @CreatorRequestId@: A unique string that identifies the request that
--     created the query logging configuration.
--
-- -   @Destination@: The Amazon Web Services service that you want to
--     forward query logs to. Valid values include the following:
--
--     -   @S3@
--
--     -   @CloudWatchLogs@
--
--     -   @KinesisFirehose@
--
-- -   @DestinationArn@: The ARN of the location that Resolver is sending
--     query logs to. This value can be the ARN for an S3 bucket, a
--     CloudWatch Logs log group, or a Kinesis Data Firehose delivery
--     stream.
--
-- -   @Id@: The ID of the query logging configuration
--
-- -   @Name@: The name of the query logging configuration
--
-- -   @OwnerId@: The Amazon Web Services account ID for the account that
--     created the query logging configuration.
--
-- -   @ShareStatus@: An indication of whether the query logging
--     configuration is shared with other Amazon Web Services accounts, or
--     was shared with the current account by another Amazon Web Services
--     account. Valid values include: @NOT_SHARED@, @SHARED_WITH_ME@, or
--     @SHARED_BY_ME@.
--
-- -   @Status@: The status of the query logging configuration. If you
--     specify @Status@ for @Name@, specify the applicable status code for
--     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
--     information, see
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status Status>.
--
-- __ListResolverQueryLogConfigAssociations__
--
-- Valid values for @Name@ include the following:
--
-- -   @CreationTime@: The date and time that the VPC was associated with
--     the query logging configuration, in Unix time format and Coordinated
--     Universal Time (UTC).
--
-- -   @Error@: If the value of @Status@ is @FAILED@, specify the cause:
--     @DESTINATION_NOT_FOUND@ or @ACCESS_DENIED@.
--
-- -   @Id@: The ID of the query logging association.
--
-- -   @ResolverQueryLogConfigId@: The ID of the query logging
--     configuration that a VPC is associated with.
--
-- -   @ResourceId@: The ID of the Amazon VPC that is associated with the
--     query logging configuration.
--
-- -   @Status@: The status of the query logging association. If you
--     specify @Status@ for @Name@, specify the applicable status code for
--     @Values@: @CREATING@, @CREATED@, @DELETING@, or @FAILED@. For more
--     information, see
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status Status>.
filter_name :: Lens.Lens' Filter (Prelude.Maybe Prelude.Text)
filter_name = Lens.lens (\Filter' {name} -> name) (\s@Filter' {} a -> s {name = a} :: Filter)

instance Prelude.Hashable Filter

instance Prelude.NFData Filter

instance Core.ToJSON Filter where
  toJSON Filter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Values" Core..=) Prelude.<$> values,
            ("Name" Core..=) Prelude.<$> name
          ]
      )
