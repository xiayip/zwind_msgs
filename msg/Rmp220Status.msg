std_msgs/Header header

uint16 MODE_LOCK = 0
uint16 MODE_CTRL = 1
uint16 MODE_PUSH = 2
uint16 MODE_EMERGENCY = 3
uint16 MODE_ERROR = 4

uint16 chassis_mode
int16 control_command_source
uint16 motor_work_mode
uint8 load_state
int16 hang_mode

uint32 host_error
uint32 central_error
uint16 left_motor_error
uint16 right_motor_error
uint32 bms_error

int32 vehicle_meter
uint16 charge_mode
uint16 charge_connect_status
int16 charge_mos_status
