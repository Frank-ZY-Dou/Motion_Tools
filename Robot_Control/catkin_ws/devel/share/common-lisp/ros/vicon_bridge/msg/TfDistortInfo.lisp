; Auto-generated. Do not edit!


(cl:in-package vicon_bridge-msg)


;//! \htmlinclude TfDistortInfo.msg.html

(cl:defclass <TfDistortInfo> (roslisp-msg-protocol:ros-message)
  ((tf_pub_rate
    :reader tf_pub_rate
    :initarg :tf_pub_rate
    :type cl:float
    :initform 0.0)
   (tf_ref_frame
    :reader tf_ref_frame
    :initarg :tf_ref_frame
    :type cl:string
    :initform "")
   (tf_frame_in
    :reader tf_frame_in
    :initarg :tf_frame_in
    :type cl:string
    :initform "")
   (tf_frame_out
    :reader tf_frame_out
    :initarg :tf_frame_out
    :type cl:string
    :initform "")
   (delay
    :reader delay
    :initarg :delay
    :type cl:integer
    :initform 0)
   (position_scale
    :reader position_scale
    :initarg :position_scale
    :type cl:float
    :initform 0.0)
   (noise_type
    :reader noise_type
    :initarg :noise_type
    :type cl:string
    :initform "")
   (sigma_roll_pitch
    :reader sigma_roll_pitch
    :initarg :sigma_roll_pitch
    :type cl:float
    :initform 0.0)
   (sigma_yaw
    :reader sigma_yaw
    :initarg :sigma_yaw
    :type cl:float
    :initform 0.0)
   (sigma_xy
    :reader sigma_xy
    :initarg :sigma_xy
    :type cl:float
    :initform 0.0)
   (sigma_z
    :reader sigma_z
    :initarg :sigma_z
    :type cl:float
    :initform 0.0)
   (random_walk_k_xy
    :reader random_walk_k_xy
    :initarg :random_walk_k_xy
    :type cl:float
    :initform 0.0)
   (random_walk_k_z
    :reader random_walk_k_z
    :initarg :random_walk_k_z
    :type cl:float
    :initform 0.0)
   (random_walk_sigma_xy
    :reader random_walk_sigma_xy
    :initarg :random_walk_sigma_xy
    :type cl:float
    :initform 0.0)
   (random_walk_sigma_z
    :reader random_walk_sigma_z
    :initarg :random_walk_sigma_z
    :type cl:float
    :initform 0.0)
   (random_walk_tau_xy
    :reader random_walk_tau_xy
    :initarg :random_walk_tau_xy
    :type cl:float
    :initform 0.0)
   (random_walk_tau_z
    :reader random_walk_tau_z
    :initarg :random_walk_tau_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass TfDistortInfo (<TfDistortInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TfDistortInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TfDistortInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vicon_bridge-msg:<TfDistortInfo> is deprecated: use vicon_bridge-msg:TfDistortInfo instead.")))

(cl:ensure-generic-function 'tf_pub_rate-val :lambda-list '(m))
(cl:defmethod tf_pub_rate-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:tf_pub_rate-val is deprecated.  Use vicon_bridge-msg:tf_pub_rate instead.")
  (tf_pub_rate m))

(cl:ensure-generic-function 'tf_ref_frame-val :lambda-list '(m))
(cl:defmethod tf_ref_frame-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:tf_ref_frame-val is deprecated.  Use vicon_bridge-msg:tf_ref_frame instead.")
  (tf_ref_frame m))

(cl:ensure-generic-function 'tf_frame_in-val :lambda-list '(m))
(cl:defmethod tf_frame_in-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:tf_frame_in-val is deprecated.  Use vicon_bridge-msg:tf_frame_in instead.")
  (tf_frame_in m))

(cl:ensure-generic-function 'tf_frame_out-val :lambda-list '(m))
(cl:defmethod tf_frame_out-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:tf_frame_out-val is deprecated.  Use vicon_bridge-msg:tf_frame_out instead.")
  (tf_frame_out m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:delay-val is deprecated.  Use vicon_bridge-msg:delay instead.")
  (delay m))

(cl:ensure-generic-function 'position_scale-val :lambda-list '(m))
(cl:defmethod position_scale-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:position_scale-val is deprecated.  Use vicon_bridge-msg:position_scale instead.")
  (position_scale m))

(cl:ensure-generic-function 'noise_type-val :lambda-list '(m))
(cl:defmethod noise_type-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:noise_type-val is deprecated.  Use vicon_bridge-msg:noise_type instead.")
  (noise_type m))

(cl:ensure-generic-function 'sigma_roll_pitch-val :lambda-list '(m))
(cl:defmethod sigma_roll_pitch-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:sigma_roll_pitch-val is deprecated.  Use vicon_bridge-msg:sigma_roll_pitch instead.")
  (sigma_roll_pitch m))

(cl:ensure-generic-function 'sigma_yaw-val :lambda-list '(m))
(cl:defmethod sigma_yaw-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:sigma_yaw-val is deprecated.  Use vicon_bridge-msg:sigma_yaw instead.")
  (sigma_yaw m))

(cl:ensure-generic-function 'sigma_xy-val :lambda-list '(m))
(cl:defmethod sigma_xy-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:sigma_xy-val is deprecated.  Use vicon_bridge-msg:sigma_xy instead.")
  (sigma_xy m))

(cl:ensure-generic-function 'sigma_z-val :lambda-list '(m))
(cl:defmethod sigma_z-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:sigma_z-val is deprecated.  Use vicon_bridge-msg:sigma_z instead.")
  (sigma_z m))

(cl:ensure-generic-function 'random_walk_k_xy-val :lambda-list '(m))
(cl:defmethod random_walk_k_xy-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_k_xy-val is deprecated.  Use vicon_bridge-msg:random_walk_k_xy instead.")
  (random_walk_k_xy m))

(cl:ensure-generic-function 'random_walk_k_z-val :lambda-list '(m))
(cl:defmethod random_walk_k_z-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_k_z-val is deprecated.  Use vicon_bridge-msg:random_walk_k_z instead.")
  (random_walk_k_z m))

(cl:ensure-generic-function 'random_walk_sigma_xy-val :lambda-list '(m))
(cl:defmethod random_walk_sigma_xy-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_sigma_xy-val is deprecated.  Use vicon_bridge-msg:random_walk_sigma_xy instead.")
  (random_walk_sigma_xy m))

(cl:ensure-generic-function 'random_walk_sigma_z-val :lambda-list '(m))
(cl:defmethod random_walk_sigma_z-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_sigma_z-val is deprecated.  Use vicon_bridge-msg:random_walk_sigma_z instead.")
  (random_walk_sigma_z m))

(cl:ensure-generic-function 'random_walk_tau_xy-val :lambda-list '(m))
(cl:defmethod random_walk_tau_xy-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_tau_xy-val is deprecated.  Use vicon_bridge-msg:random_walk_tau_xy instead.")
  (random_walk_tau_xy m))

(cl:ensure-generic-function 'random_walk_tau_z-val :lambda-list '(m))
(cl:defmethod random_walk_tau_z-val ((m <TfDistortInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vicon_bridge-msg:random_walk_tau_z-val is deprecated.  Use vicon_bridge-msg:random_walk_tau_z instead.")
  (random_walk_tau_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TfDistortInfo>) ostream)
  "Serializes a message object of type '<TfDistortInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tf_pub_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tf_ref_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tf_ref_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tf_frame_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tf_frame_in))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tf_frame_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tf_frame_out))
  (cl:let* ((signed (cl:slot-value msg 'delay)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'noise_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'noise_type))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sigma_roll_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sigma_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sigma_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sigma_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_k_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_k_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_sigma_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_sigma_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_tau_xy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'random_walk_tau_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TfDistortInfo>) istream)
  "Deserializes a message object of type '<TfDistortInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tf_pub_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_ref_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tf_ref_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_frame_in) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tf_frame_in) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tf_frame_out) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tf_frame_out) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delay) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noise_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'noise_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma_roll_pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma_yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma_xy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_k_xy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_k_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_sigma_xy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_sigma_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_tau_xy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'random_walk_tau_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TfDistortInfo>)))
  "Returns string type for a message object of type '<TfDistortInfo>"
  "vicon_bridge/TfDistortInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TfDistortInfo)))
  "Returns string type for a message object of type 'TfDistortInfo"
  "vicon_bridge/TfDistortInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TfDistortInfo>)))
  "Returns md5sum for a message object of type '<TfDistortInfo>"
  "a7025291415a53264a70b836a949be8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TfDistortInfo)))
  "Returns md5sum for a message object of type 'TfDistortInfo"
  "a7025291415a53264a70b836a949be8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TfDistortInfo>)))
  "Returns full string definition for message of type '<TfDistortInfo>"
  (cl:format cl:nil "float64 tf_pub_rate~%string tf_ref_frame~%string tf_frame_in~%string tf_frame_out~%int32 delay~%float64 position_scale~%string noise_type~%float64 sigma_roll_pitch~%float64 sigma_yaw~%float64 sigma_xy~%float64 sigma_z~%float64 random_walk_k_xy~%float64 random_walk_k_z~%float64 random_walk_sigma_xy~%float64 random_walk_sigma_z~%float64 random_walk_tau_xy~%float64 random_walk_tau_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TfDistortInfo)))
  "Returns full string definition for message of type 'TfDistortInfo"
  (cl:format cl:nil "float64 tf_pub_rate~%string tf_ref_frame~%string tf_frame_in~%string tf_frame_out~%int32 delay~%float64 position_scale~%string noise_type~%float64 sigma_roll_pitch~%float64 sigma_yaw~%float64 sigma_xy~%float64 sigma_z~%float64 random_walk_k_xy~%float64 random_walk_k_z~%float64 random_walk_sigma_xy~%float64 random_walk_sigma_z~%float64 random_walk_tau_xy~%float64 random_walk_tau_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TfDistortInfo>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'tf_ref_frame))
     4 (cl:length (cl:slot-value msg 'tf_frame_in))
     4 (cl:length (cl:slot-value msg 'tf_frame_out))
     4
     8
     4 (cl:length (cl:slot-value msg 'noise_type))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TfDistortInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TfDistortInfo
    (cl:cons ':tf_pub_rate (tf_pub_rate msg))
    (cl:cons ':tf_ref_frame (tf_ref_frame msg))
    (cl:cons ':tf_frame_in (tf_frame_in msg))
    (cl:cons ':tf_frame_out (tf_frame_out msg))
    (cl:cons ':delay (delay msg))
    (cl:cons ':position_scale (position_scale msg))
    (cl:cons ':noise_type (noise_type msg))
    (cl:cons ':sigma_roll_pitch (sigma_roll_pitch msg))
    (cl:cons ':sigma_yaw (sigma_yaw msg))
    (cl:cons ':sigma_xy (sigma_xy msg))
    (cl:cons ':sigma_z (sigma_z msg))
    (cl:cons ':random_walk_k_xy (random_walk_k_xy msg))
    (cl:cons ':random_walk_k_z (random_walk_k_z msg))
    (cl:cons ':random_walk_sigma_xy (random_walk_sigma_xy msg))
    (cl:cons ':random_walk_sigma_z (random_walk_sigma_z msg))
    (cl:cons ':random_walk_tau_xy (random_walk_tau_xy msg))
    (cl:cons ':random_walk_tau_z (random_walk_tau_z msg))
))
