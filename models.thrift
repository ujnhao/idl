
enum CpsType {
    Unknow = 0
}

struct CpsRebateDiscounts {
    1:optional string id
    2:optional string app_id
    3:optional string name
    4:optional CpsType cps_type
    5:optional string jump_link
    6:optional string extra
    7:optional i32 status
}

struct Pagination {
    1: required i32 page_index
    2: required i32 page_size
    3: required i32 total_count
}