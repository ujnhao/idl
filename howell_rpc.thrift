include "base.thrift"
include "models.thrift"
namespace go coder.hao.howell_rpc 


struct CreateCpsRebateDiscountsRequest {
    1: required models.CpsRebateDiscounts CRDEntity,

    255: base.Base Base,
}

struct CreateCpsRebateDiscountsResponse {
    1: optional string EntityId,

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

service HowellRpcService {
    CreateCpsRebateDiscountsResponse CreateCpsRebateDiscounts(1: CreateCpsRebateDiscountsRequest req)
    MGetCpsRebateDiscountsResponse MGetCpsRebateDiscounts(1: MGetCpsRebateDiscountsRequest req)
}
