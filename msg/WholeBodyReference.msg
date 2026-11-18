# Optional posture accompanying one TCP target/waypoint. Fixed world frame only.
# Base must be planar (z=0, roll=pitch=0). Empty frame means unused, NOT base_link.
geometry_msgs/PoseStamped base_pose
# Named subset of controlled arm joints; position only. A soft preference, not IK.
sensor_msgs/JointState posture
