; Auto-generated. Do not edit!


(cl:in-package vicon_bridge-msg)


;//! \htmlinclude Marker.msg.html

(cl:defclass <Marker> (roslisp-msg-protocol:ros-message)
  ((marker_name
    :reader marker_name
    :initarg :marker_name
    :type cl:string
    :initform "")
   (subject_name
    :reader subject_name
    :initarg :subject_name
    :type cl:string
    :initform "")
   (segment_name
    :reader segment_name
    :initarg :segment_name
    :type cl:string
    :initform "")
   (translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (occluded
    :reader occluded
    :initarg :occluded
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Marker (<Marker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Marker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Marker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_bridge-msg:<Marker> is deprecated: use vicon_bridge-msg:Marker instead.")))

(cl:ensure-generic-function 'marker_name-val :lambda-list '(m))
(cl:defmethod marker_name-val ((m <Marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:marker_name-val is deprecated.  Use vicon_bridge-msg:marker_name instead.")
  (marker_name m))

(cl:ensure-generic-function 'subject_name-val :lambda-list '(m))
(cl:defmethod subject_name-val ((m <Marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:subject_name-val is deprecated.  Use vicon_bridge-msg:subject_name instead.")
  (subject_name m))

(cl:ensure-generic-function 'segment_name-val :lambda-list '(m))
(cl:defmethod segment_name-val ((m <Marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:segment_name-val is deprecated.  Use vicon_bridge-msg:segment_name instead.")
  (segment_name m))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <Marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:translation-val is deprecated.  Use vicon_bridge-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'occluded-val :lambda-list '(m))
(cl:defmethod occluded-val ((m <Marker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:occluded-val is deprecated.  Use vicon_bridge-msg:occluded instead.")
  (occluded m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Marker>) ostream)
  "Serializes a message object of type '<Marker>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'marker_name))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'occluded) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Marker>) istream)
  "Deserializes a message object of type '<Marker>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
    (cl:setf (cl:slot-value msg 'occluded) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Marker>)))
  "Returns string type for a message object of type '<Marker>"
  "vicon_bridge/Marker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Marker)))
  "Returns string type for a message object of type 'Marker"
  "vicon_bridge/Marker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Marker>)))
  "Returns md5sum for a message object of type '<Marker>"
  "da6f93747c24b19a71932ae4b040f489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Marker)))
  "Returns md5sum for a message object of type 'Marker"
  "da6f93747c24b19a71932ae4b040f489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Marker>)))
  "Returns full string definition for message of type '<Marker>"
  (cl:format cl:nil "string marker_name~%string subject_name~%string segment_name~%geometry_msgs/Point translation~%bool occluded~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Marker)))
  "Returns full string definition for message of type 'Marker"
  (cl:format cl:nil "string marker_name~%string subject_name~%string segment_name~%geometry_msgs/Point translation~%bool occluded~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Marker>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'marker_name))
     4 (cl:length (cl:slot-value msg 'subject_name))
     4 (cl:length (cl:slot-value msg 'segment_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Marker>))
  "Converts a ROS message object to a list"
  (cl:list 'Marker
    (cl:cons ':marker_name (marker_name msg))
    (cl:cons ':subject_name (subject_name msg))
    (cl:cons ':segment_name (segment_name msg))
    (cl:cons ':translation (translation msg))
    (cl:cons ':occluded (occluded msg))
))
