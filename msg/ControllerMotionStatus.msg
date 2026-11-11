uint8 INACTIVE=0
uint8 INITIALIZING=1
uint8 IDLE=2
uint8 EXECUTING=3
uint8 SETTLING=4
uint8 STOPPING=5
uint8 PAUSED=6
uint8 FAULT=7

uint16 NONE=0
uint16 CANCELED=1
uint16 TIMED_OUT=2
uint16 PAUSE_REQUESTED=3
uint16 CONTROLLER_INACTIVE=4
uint16 FEEDBACK_UNAVAILABLE=5
uint16 SOLVER_FAILED=6
uint16 REFERENCE_FAILED=7
uint16 POLICY_FAILED=8
uint16 COLLISION_BLOCKED=9
uint16 INVALID_GOAL=10
uint16 STOP_UNCONFIRMED=11

std_msgs/Header header
uint8 state
uint16 reason
string message
# ROS Action UUID in hex; empty when no action owns the reference.
string goal_id
bool feedback_valid
geometry_msgs/PoseStamped actual
float64 position_error
float64 orientation_error
