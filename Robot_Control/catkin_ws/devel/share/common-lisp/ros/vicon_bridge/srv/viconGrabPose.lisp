; Auto-generated. Do not edit!


(cl:in-package vicon_bridge-srv)


;//! \htmlinclude viconGrabPose-request.msg.html

(cl:defclass <viconGrabPose-request> (roslisp-msg-protocol:ros-message)
  ((subject_name
    :reader subject_name
    :initarg :subject_name
    :type cl:string
    :initform "")
   (segment_name
    :reader segment_name
    :initarg :segment_name
    :type cl:string
    :initform "")
   (n_measurements
    :reader n_measurements
    :initarg :n_measurements
    :type cl:integer
    :initform 0))
)

(cl:defclass viconGrabPose-request (<viconGrabPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <viconGrabPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'viconGrabPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_bridge-srv:<viconGrabPose-request> is deprecated: use vicon_bridge-srv:viconGrabPose-request instead.")))

(cl:ensure-generic-function 'subject_name-val :lambda-list '(m))
(cl:defmethod subject_name-val ((m <viconGrabPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-srv:subject_name-val is deprecated.  Use vicon_bridge-srv:subject_name instead.")
  (subject_name m))

(cl:ensure-generic-function 'segment_name-val :lambda-list '(m))
(cl:defmethod segment_name-val ((m <viconGrabPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-srv:segment_name-val is deprecated.  Use vicon_bridge-srv:segment_name instead.")
  (segment_name m))

(cl:ensure-generic-function 'n_measurements-val :lambda-list '(m))
(cl:defmethod n_measurements-val ((m <viconGrabPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-srv:n_measurements-val is deprecated.  Use vicon_bridge-srv:n_measurements instead.")
  (n_measurements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <viconGrabPose-request>) ostream)
  "Serializes a message object of type '<viconGrabPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'segment_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'segment_name))
  (cl:let* ((signed (cl:slot-value msg 'n_measurements)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <viconGrabPose-request>) istream)
  "Deserializes a message object of type '<viconGrabPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segment_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'segment_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n_measurements) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<viconGrabPose-request>)))
  "Returns string type for a service object of type '<viconGrabPose-request>"
  "vicon_bridge/viconGrabPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'viconGrabPose-request)))
  "Returns string type for a service object of type 'viconGrabPose-request"
  "vicon_bridge/viconGrabPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<viconGrabPose-request>)))
  "Returns md5sum for a message object of type '<viconGrabPose-request>"
  "396f27028ccc2718b2991cabdc1af144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'viconGrabPose-request)))
  "Returns md5sum for a message object of type 'viconGrabPose-request"
  "396f27028ccc2718b2991cabdc1af144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<viconGrabPose-request>)))
  "Returns full string definition for message of type '<viconGrabPose-request>"
  (cl:format cl:nil "string subject_name~%string segment_name~%int32 n_measurements~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'viconGrabPose-request)))
  "Returns full string definition for message of type 'viconGrabPose-request"
  (cl:format cl:nil "string subject_name~%string segment_name~%int32 n_measurements~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <viconGrabPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'subject_name))
     4 (cl:length (cl:slot-value msg 'segment_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <viconGrabPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'viconGrabPose-request
    (cl:cons ':subject_name (subject_name msg))
    (cl:cons ':segment_name (segment_name msg))
    (cl:cons ':n_measurements (n_measurements msg))
))
;//! \htmlinclude viconGrabPose-response.msg.html

(cl:defclass <viconGrabPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass viconGrabPose-response (<viconGrabPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <viconGrabPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'viconGrabPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_bridge-srv:<viconGrabPose-response> is deprecated: use vicon_bridge-srv:viconGrabPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <viconGrabPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-srv:success-val is deprecated.  Use vicon_bridge-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <viconGrabPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-srv:pose-val is deprecated.  Use vicon_bridge-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <viconGrabPose-response>) ostream)
  "Serializes a message object of type '<viconGrabPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <viconGrabPose-response>) istream)
  "Deserializes a message object of type '<viconGrabPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<viconGrabPose-response>)))
  "Returns string type for a service object of type '<viconGrabPose-response>"
  "vicon_bridge/viconGrabPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'viconGrabPose-response)))
  "Returns string type for a service object of type 'viconGrabPose-response"
  "vicon_bridge/viconGrabPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<viconGrabPose-response>)))
  "Returns md5sum for a message object of type '<viconGrabPose-response>"
  "396f27028ccc2718b2991cabdc1af144")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'viconGrabPose-response)))
  "Returns md5sum for a message object of type 'viconGrabPose-response"
  "396f27028ccc2718b2991cabdc1af144")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<viconGrabPose-response>)))
  "Returns full string definition for message of type '<viconGrabPose-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'viconGrabPose-response)))
  "Returns full string definition for message of type 'viconGrabPose-response"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <viconGrabPose-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <viconGrabPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'viconGrabPose-response
    (cl:cons ':success (success msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'viconGrabPose)))
  'viconGrabPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'viconGrabPose)))
  'viconGrabPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'viconGrabPose)))
  "Returns string type for a service object of type '<viconGrabPose>"
  "vicon_bridge/viconGrabPose")