include "common.thrift"

struct CpsRebateDiscounts {
    1:optional string id // 唯一ID
    2:optional string app_id // APP_ID
    3:optional string name // 名称
    4:optional common.CpsType cps_type // 优惠类型
    5:optional common.ActType act_type // 点击类型
    6:optional string act_url // 点击链接
    7:optional string images // 展示图片
    8:optional string extra // 扩展信息
    9:optional common.Status status // 状态
    10:optional string resource // 资源位
}
