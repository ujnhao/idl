
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

struct CpsRebateDiscounts {
    1:optional string id // 唯一ID
    2:optional string app_id // APP_ID
    3:optional string name // 名称
    4:optional CpsType cps_type // 优惠类型
    5:optional ActType act_tpye // 点击类型
    6:optional string act_url // 点击链接
    7:optional string images // 展示图片
    8:optional string extra // 扩展信息
    9:optional Status status // 状态
    10:optional string resource // 资源位
}

struct Pagination {
    1: required i32 page_index
    2: required i32 page_size
    3: required i32 total_count
}