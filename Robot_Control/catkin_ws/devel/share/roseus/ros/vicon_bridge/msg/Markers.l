;; Auto-generated. Do not edit!


(when (boundp 'vicon_bridge::Markers)
  (if (not (find-package "VICON_BRIDGE"))
    (make-package "VICON_BRIDGE"))
  (shadow 'Markers (find-package "VICON_BRIDGE")))
(unless (find-package "VICON_BRIDGE::MARKERS")
  (make-package "VICON_BRIDGE::MARKERS"))

(in-package "ROS")
;;//! \htmlinclude Markers.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vicon_bridge::Markers
  :super ros::object
  :slots (_header _frame_number _markers ))

(defmethod vicon_bridge::Markers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_number __frame_number) 0)
    ((:markers __markers) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_number (round __frame_number))
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_number
   (&optional __frame_number)
   (if __frame_number (setq _frame_number __frame_number)) _frame_number)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _frame_number
    4
    ;; vicon_bridge/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _frame_number
       (write-long _frame_number s)
     ;; vicon_bridge/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _frame_number
     (setq _frame_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; vicon_bridge/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance vicon_bridge::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vicon_bridge::Markers :md5sum-) "579f0637989aa8139ce6bf98cf7aabda")
(setf (get vicon_bridge::Markers :datatype-) "vicon_bridge/Markers")
(setf (get vicon_bridge::Markers :definition-)
      "Header header
uint32 frame_number # Vicon Frame Number
vicon_bridge/Marker[] markers # Array of Markers
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
MSG: vicon_bridge/Marker
string marker_name
string subject_name
string segment_name
geometry_msgs/Point translation
bool occluded

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vicon_bridge/Markers "579f0637989aa8139ce6bf98cf7aabda")


