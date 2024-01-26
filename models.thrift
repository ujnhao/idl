
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