include "models.thrift"
namespace go coder.hao.howell_api 


struct CreateCpsRebateDiscountsRequest {
    1: required models.CpsRebateDiscounts crd_entity
}

struct CreateCpsRebateDiscountsData {
    1: optional string entity_id 
}

struct CreateCpsRebateDiscountsResponse {
    1: optional CreateCpsRebateDiscountsData data 

    100: i32 status
    101: string message
}

struct GetCpsRebateDiscountsRequest {
    1: required string entity_id
}

struct GetCpsRebateDiscountsData {
    1: optional models.CpsRebateDiscounts info 

    100: i32 status
    101: string message
}

struct GetCpsRebateDiscountsResponse {
    1: optional GetCpsRebateDiscountsData data 

    100: i32 status
    101: string message
}

service HowellAPIService {
    CreateCpsRebateDiscountsResponse CreateCpsRebateDiscounts(1: CreateCpsRebateDiscountsRequest req) (api.post="/api/cps_rebate_discounts/create");
    GetCpsRebateDiscountsResponse GetCpsRebateDiscounts(1: GetCpsRebateDiscountsRequest req) (api.get="/api/cps_rebate_discounts/get");
}
