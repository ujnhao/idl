include "base.thrift"
include "models.thrift"
include "common.thrift"
namespace go coder.hao.howell_rpc 


struct CreateCpsRebateDiscountsRequest {
    1: required models.CpsRebateDiscounts CRDEntity,

    255: base.Base Base,
}

struct CreateCpsRebateDiscountsResponse {
    1: optional string EntityId,

    255: base.BaseResp BaseResp, 
}

struct UpdateCpsRebateDiscountsRequest {
    1: required string EntityId,
    2: required models.CpsRebateDiscounts CRDEntity,

    255: base.Base Base,
}

struct UpdateCpsRebateDiscountsResponse {

    255: base.BaseResp BaseResp,
}

struct MGetCpsRebateDiscountsRequest {
    1: required list<string> EntityIdList, 

    255: base.Base Base,
}

struct MGetCpsRebateDiscountsResponse {
    1: optional map<string, models.CpsRebateDiscounts> EntityMap

    255: base.BaseResp BaseResp, 
}

struct QueryCpsRebateDiscountsRequest {
    1: optional list<string> EntityIdList,

    99: required i32 PageIndex,
    100: required i32 PageSize,

    255: base.Base Base,
}

struct QueryCpsRebateDiscountsResponse {
    1: optional list<models.CpsRebateDiscounts> ItemList

    100: required common.Pagination Pagination
    255: base.BaseResp BaseResp,
}

service HowellRpcService {
    CreateCpsRebateDiscountsResponse CreateCpsRebateDiscounts(1: CreateCpsRebateDiscountsRequest req)
    UpdateCpsRebateDiscountsResponse UpdateCpsRebateDiscounts(1: UpdateCpsRebateDiscountsRequest req)
    MGetCpsRebateDiscountsResponse MGetCpsRebateDiscounts(1: MGetCpsRebateDiscountsRequest req)
    QueryCpsRebateDiscountsResponse QueryCpsRebateDiscounts(1: QueryCpsRebateDiscountsRequest req)
}
