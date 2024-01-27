
typedef string CpsType
const CpsType Unknow = "unknown" // 未知
const CpsType MeiTuan = "meituan" // 美团


typedef string ActType
const ActType Unkonw = "unknown" // 未知
const ActType MiniProgram = "miniProgram" // 微信小程序
const ActType H5 = "h5" // H5

enum Status {
    Valid = 0
    Delete = 1
}

struct Pagination {
    1: required i32 page_index
    2: required i32 page_size
    3: required i32 total_count
}
