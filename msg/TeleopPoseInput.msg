# One body-relative teleoperation pose and its source timing metadata.
# Wire messageType: zephyr_msgs/msg/TeleopPoseInput.
# All fields belong to the same sample; do not send metadata separately.

uint8 PROTOCOL_VERSION=1
# Send PROTOCOL_VERSION explicitly. Zero means unspecified, not version 1.
uint8 protocol_version

# Unique identifier for this teleop session / controller-origin reset.
# Establish a new ID through the enable handshake when re-anchoring or
# reconnecting. Receivers must reject frames from previous sessions; receiving
# an unfamiliar ID alone must not authorize a new session or enable motion.
string session_id

# Starts at zero and increases for each new source sample within the session.
# Skipped values are allowed. Re-sending a sample must keep its sequence and
# sample_time_us; it must not make an old pose appear to be a new measurement.
uint64 sequence

# Source monotonic clock, in integer microseconds, recorded when the pose is
# read. This is NOT Unix / ROS time and must not be compared directly with a
# receiver clock. If the XR API returns a predicted pose, this field still
# records the application read time, not a claimed hardware acquisition time.
uint64 sample_time_us

# Same source clock and origin as sample_time_us, recorded immediately before
# handing this frame to the transport API. Must be >= sample_time_us.
# This is not the time the packet actually leaves an SDK / network queue.
uint64 send_time_us

# Report the tracking validity of this sample. Version 1 requires both flags
# for a usable 6-DoF pose. Invalid samples must not refresh the valid-pose
# watchdog; do not substitute an identity or previously valid pose as fresh.
bool position_valid
bool rotation_valid

# Retains the existing PoseStamped payload and body-relative pose convention.
# For the current Quest right-controller input, header.frame_id is "ee_offset".
# The RTC bridge may replace header.stamp with local ROS receipt/processing
# time; it is distinct from the source sample_time_us and send_time_us above.
# The adapter's final command to Servo receives a local ROS command timestamp.
geometry_msgs/PoseStamped pose
