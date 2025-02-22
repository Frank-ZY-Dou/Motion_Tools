;; Auto-generated. Do not edit!


(when (boundp 'vicon_bridge::viconCalibrateSegment)
  (if (not (find-package "VICON_BRIDGE"))
    (make-package "VICON_BRIDGE"))
  (shadow 'viconCalibrateSegment (find-package "VICON_BRIDGE")))
(unless (find-package "VICON_BRIDGE::VICONCALIBRATESEGMENT")
  (make-package "VICON_BRIDGE::VICONCALIBRATESEGMENT"))
(unless (find-package "VICON_BRIDGE::VICONCALIBRATESEGMENTREQUEST")
  (make-package "VICON_BRIDGE::VICONCALIBRATESEGMENTREQUEST"))
(unless (find-package "VICON_BRIDGE::VICONCALIBRATESEGMENTRESPONSE")
  (make-package "VICON_BRIDGE::VICONCALIBRATESEGMENTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vicon_bridge::viconCalibrateSegmentRequest
  :super ros::object
  :slots (_subject_name _segment_name _z_offset _n_measurements ))

(defmethod vicon_bridge::viconCalibrateSegmentRequest
  (:init
   (&key
    ((:subject_name __subject_name) "")
    ((:segment_name __segment_name) "")
    ((:z_offset __z_offset) 0.0)
    ((:n_measurements __n_measurements) 0)
    )
   (send-super :init)
   (setq _subject_name (string __subject_name))
   (setq _segment_name (string __segment_name))
   (setq _z_offset (float __z_offset))
   (setq _n_measurements (round __n_measurements))
   self)
  (:subject_name
   (&optional __subject_name)
   (if __subject_name (setq _subject_name __subject_name)) _subject_name)
  (:segment_name
   (&optional __segment_name)
   (if __segment_name (setq _segment_name __segment_name)) _segment_name)
  (:z_offset
   (&optional __z_offset)
   (if __z_offset (setq _z_offset __z_offset)) _z_offset)
  (:n_measurements
   (&optional __n_measurements)
   (if __n_measurements (setq _n_measurements __n_measurements)) _n_measurements)
  (:serialization-length
   ()
   (+
    ;; string _subject_name
    4 (length _subject_name)
    ;; string _segment_name
    4 (length _segment_name)
    ;; float64 _z_offset
    8
    ;; int32 _n_measurements
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_name
       (write-long (length _subject_name) s) (princ _subject_name s)
     ;; string _segment_name
       (write-long (length _segment_name) s) (princ _segment_name s)
     ;; float64 _z_offset
       (sys::poke _z_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _n_measurements
       (write-long _n_measurements s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _segment_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segment_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _z_offset
     (setq _z_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _n_measurements
     (setq _n_measurements (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass vicon_bridge::viconCalibrateSegmentResponse
  :super ros::object
  :slots (_success _status _pose ))

(defmethod vicon_bridge::viconCalibrateSegmentResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   (setq _pose __pose)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass vicon_bridge::viconCalibrateSegment
  :super ros::object
  :slots ())

(setf (get vicon_bridge::viconCalibrateSegment :md5sum-) "ca1b34be858a36828126364b1a577794")
(setf (get vicon_bridge::viconCalibrateSegment :datatype-) "vicon_bridge/viconCalibrateSegment")
(setf (get vicon_bridge::viconCalibrateSegment :request) vicon_bridge::viconCalibrateSegmentRequest)
(setf (get vicon_bridge::viconCalibrateSegment :response) vicon_bridge::viconCalibrateSegmentResponse)

(defmethod vicon_bridge::viconCalibrateSegmentRequest
  (:response () (instance vicon_bridge::viconCalibrateSegmentResponse :init)))

(setf (get vicon_bridge::viconCalibrateSegmentRequest :md5sum-) "ca1b34be858a36828126364b1a577794")
(setf (get vicon_bridge::viconCalibrateSegmentRequest :datatype-) "vicon_bridge/viconCalibrateSegmentRequest")
(setf (get vicon_bridge::viconCalibrateSegmentRequest :definition-)
      "string subject_name
string segment_name
float64 z_offset
int32 n_measurements
---
bool success
string status
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get vicon_bridge::viconCalibrateSegmentResponse :md5sum-) "ca1b34be858a36828126364b1a577794")
(setf (get vicon_bridge::viconCalibrateSegmentResponse :datatype-) "vicon_bridge/viconCalibrateSegmentResponse")
(setf (get vicon_bridge::viconCalibrateSegmentResponse :definition-)
      "string subject_name
string segment_name
float64 z_offset
int32 n_measurements
---
bool success
string status
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :vicon_bridge/viconCalibrateSegment "ca1b34be858a36828126364b1a577794")


