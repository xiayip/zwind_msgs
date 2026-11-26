# Explicit chassis intent in SI units, after input shaping/mode selection.
# These intent modes deliberately differ from the Ranger CAN mode numbers.
uint8 NEUTRAL=0
uint8 ACKERMANN=1
uint8 CRAB=2
uint8 SPIN=3

# Active commands exclusively own the chassis input, including NEUTRAL.
# An inactive command releases that ownership and discards the last command.
# Stream loss must stop motion, never resume a cached command from another source.
bool active
uint8 mode
float64 linear_velocity
float64 angular_velocity
float64 steering_angle
