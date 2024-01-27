
typedef string CpsType
const CpsType CpsUnknow = "unknown" // 未知
const CpsType CpsMeiTuan = "meituan" // 美团
const CpsType CpsDiDi = "meituan" // 美团



typedef string ActType
const ActType ActUnkonw = "unknown" // 未知
const ActType ActMiniProgram = "miniProgram" // 微信小程序
const ActType ActH5 = "h5" // H5

enum Status {
    Valid = 0
    Delete = 1
}

struct Pagination {
    1: required i32 page_index
    2: required i32 page_size
    3: required i32 total_count
}
