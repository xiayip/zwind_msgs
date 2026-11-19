# Optional posture accompanying one TCP target/waypoint. Fixed world frame only.
# Base must be planar (z=0, roll=pitch=0). Empty frame means unused, NOT base_link.
geometry_msgs/PoseStamped base_pose
# Named subset of controlled joints; position only. A soft preference, not IK.
# Optional normalized gripper joint: 0=open, 1=closed (NOT radians).
# Its weight/rate/arrival tolerance come from MPC gripper configuration.
sensor_msgs/JointState posture
