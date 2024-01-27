include "models.thrift"
include "common.thrift"
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

struct UpdateCpsRebateDiscountsRequest {
    1: required string entity_id
    2: required models.CpsRebateDiscounts crd_entity
}

struct UpdateCpsRebateDiscountsResponse {

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

struct QueryCpsRebateDiscountsRequest {
    1: optional list<string> entity_id_list,
    2: optional list<string> resource_list,
    3: optional list<common.ActType> act_type_list,
    4: optional list<common.CpsType> cps_type_list,

    99: required i32 page_index,
    100: required i32 page_size,
}

struct QueryCpsRebateDiscountsData {
    1: optional list<models.CpsRebateDiscounts> item_list

    100: required common.Pagination pagination
}

struct QueryCpsRebateDiscountsResponse {
    1: optional QueryCpsRebateDiscountsData data

    100: i32 status
    101: string message
}

service HowellAPIService {
    CreateCpsRebateDiscountsResponse CreateCpsRebateDiscounts(1: CreateCpsRebateDiscountsRequest req) (api.post="/api/howell/v1/cps_rebate_discounts/create");
    UpdateCpsRebateDiscountsResponse UpdateCpsRebateDiscounts(1: UpdateCpsRebateDiscountsRequest req) (api.post="/api/howell/v1/cps_rebate_discounts/update");
    GetCpsRebateDiscountsResponse GetCpsRebateDiscounts(1: GetCpsRebateDiscountsRequest req) (api.get="/api/howell/v1/cps_rebate_discounts/get");
    QueryCpsRebateDiscountsResponse QueryCpsRebateDiscounts(1: QueryCpsRebateDiscountsRequest req)(api.post="/api/howell/v1/cps_rebate_discounts/query");
}
