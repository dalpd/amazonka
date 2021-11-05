{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.ElasticInference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-07-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Elastic Inference public APIs.
module Amazonka.ElasticInference
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** BadRequestException
    _BadRequestException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** DescribeAcceleratorOfferings
    DescribeAcceleratorOfferings (DescribeAcceleratorOfferings'),
    newDescribeAcceleratorOfferings,
    DescribeAcceleratorOfferingsResponse (DescribeAcceleratorOfferingsResponse'),
    newDescribeAcceleratorOfferingsResponse,

    -- ** DescribeAccelerators (Paginated)
    DescribeAccelerators (DescribeAccelerators'),
    newDescribeAccelerators,
    DescribeAcceleratorsResponse (DescribeAcceleratorsResponse'),
    newDescribeAcceleratorsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** DescribeAcceleratorTypes
    DescribeAcceleratorTypes (DescribeAcceleratorTypes'),
    newDescribeAcceleratorTypes,
    DescribeAcceleratorTypesResponse (DescribeAcceleratorTypesResponse'),
    newDescribeAcceleratorTypesResponse,

    -- * Types

    -- ** LocationType
    LocationType (..),

    -- ** AcceleratorType
    AcceleratorType (AcceleratorType'),
    newAcceleratorType,

    -- ** AcceleratorTypeOffering
    AcceleratorTypeOffering (AcceleratorTypeOffering'),
    newAcceleratorTypeOffering,

    -- ** ElasticInferenceAccelerator
    ElasticInferenceAccelerator (ElasticInferenceAccelerator'),
    newElasticInferenceAccelerator,

    -- ** ElasticInferenceAcceleratorHealth
    ElasticInferenceAcceleratorHealth (ElasticInferenceAcceleratorHealth'),
    newElasticInferenceAcceleratorHealth,

    -- ** Filter
    Filter (Filter'),
    newFilter,

    -- ** KeyValuePair
    KeyValuePair (KeyValuePair'),
    newKeyValuePair,

    -- ** MemoryInfo
    MemoryInfo (MemoryInfo'),
    newMemoryInfo,
  )
where

import Amazonka.ElasticInference.DescribeAcceleratorOfferings
import Amazonka.ElasticInference.DescribeAcceleratorTypes
import Amazonka.ElasticInference.DescribeAccelerators
import Amazonka.ElasticInference.Lens
import Amazonka.ElasticInference.ListTagsForResource
import Amazonka.ElasticInference.TagResource
import Amazonka.ElasticInference.Types
import Amazonka.ElasticInference.UntagResource
import Amazonka.ElasticInference.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ElasticInference'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
