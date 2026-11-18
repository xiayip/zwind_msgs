# Runtime multipliers of the configured MPC costs, not physical speed limits.
uint8 COORDINATED=0
uint8 LOCKED=1
# Body-frame velocity models. COORDINATED keeps the configured backend default.
# Ranger supports CRAB, SPIN and the two Ackermann directions, not unrestricted OMNI.
uint8 CRAB=2
uint8 SPIN=3
uint8 ACKERMANN_FORWARD=4
uint8 ACKERMANN_REVERSE=5
uint8 DIFFERENTIAL=6
uint8 OMNI=7
uint8 base_mode 0
float64 tcp_cost_scale 1.0
float64 input_cost_scale 1.0
