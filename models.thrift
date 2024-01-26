
enum CpsType {
    Unknow = 0
}

struct CpsRebateDiscounts {
    1:optional string ID
    2:optional string AppID
    3:optional string Name
    4:optional CpsType CpsType
    5:optional string JumpLink
    6:optional string Extra
    7:optional i32 Status
}

struct Pagination {
    1: required i32 PageIndex
    2: required i32 PageSize
    3: required i32 TotalCount
}