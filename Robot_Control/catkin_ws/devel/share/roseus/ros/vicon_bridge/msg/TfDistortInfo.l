;; Auto-generated. Do not edit!


(when (boundp 'vicon_bridge::TfDistortInfo)
  (if (not (find-package "VICON_BRIDGE"))
    (make-package "VICON_BRIDGE"))
  (shadow 'TfDistortInfo (find-package "VICON_BRIDGE")))
(unless (find-package "VICON_BRIDGE::TFDISTORTINFO")
  (make-package "VICON_BRIDGE::TFDISTORTINFO"))

(in-package "ROS")
;;//! \htmlinclude TfDistortInfo.msg.html


(defclass vicon_bridge::TfDistortInfo
  :super ros::object
  :slots (_tf_pub_rate _tf_ref_frame _tf_frame_in _tf_frame_out _delay _position_scale _noise_type _sigma_roll_pitch _sigma_yaw _sigma_xy _sigma_z _random_walk_k_xy _random_walk_k_z _random_walk_sigma_xy _random_walk_sigma_z _random_walk_tau_xy _random_walk_tau_z ))

(defmethod vicon_bridge::TfDistortInfo
  (:init
   (&key
    ((:tf_pub_rate __tf_pub_rate) 0.0)
    ((:tf_ref_frame __tf_ref_frame) "")
    ((:tf_frame_in __tf_frame_in) "")
    ((:tf_frame_out __tf_frame_out) "")
    ((:delay __delay) 0)
    ((:position_scale __position_scale) 0.0)
    ((:noise_type __noise_type) "")
    ((:sigma_roll_pitch __sigma_roll_pitch) 0.0)
    ((:sigma_yaw __sigma_yaw) 0.0)
    ((:sigma_xy __sigma_xy) 0.0)
    ((:sigma_z __sigma_z) 0.0)
    ((:random_walk_k_xy __random_walk_k_xy) 0.0)
    ((:random_walk_k_z __random_walk_k_z) 0.0)
    ((:random_walk_sigma_xy __random_walk_sigma_xy) 0.0)
    ((:random_walk_sigma_z __random_walk_sigma_z) 0.0)
    ((:random_walk_tau_xy __random_walk_tau_xy) 0.0)
    ((:random_walk_tau_z __random_walk_tau_z) 0.0)
    )
   (send-super :init)
   (setq _tf_pub_rate (float __tf_pub_rate))
   (setq _tf_ref_frame (string __tf_ref_frame))
   (setq _tf_frame_in (string __tf_frame_in))
   (setq _tf_frame_out (string __tf_frame_out))
   (setq _delay (round __delay))
   (setq _position_scale (float __position_scale))
   (setq _noise_type (string __noise_type))
   (setq _sigma_roll_pitch (float __sigma_roll_pitch))
   (setq _sigma_yaw (float __sigma_yaw))
   (setq _sigma_xy (float __sigma_xy))
   (setq _sigma_z (float __sigma_z))
   (setq _random_walk_k_xy (float __random_walk_k_xy))
   (setq _random_walk_k_z (float __random_walk_k_z))
   (setq _random_walk_sigma_xy (float __random_walk_sigma_xy))
   (setq _random_walk_sigma_z (float __random_walk_sigma_z))
   (setq _random_walk_tau_xy (float __random_walk_tau_xy))
   (setq _random_walk_tau_z (float __random_walk_tau_z))
   self)
  (:tf_pub_rate
   (&optional __tf_pub_rate)
   (if __tf_pub_rate (setq _tf_pub_rate __tf_pub_rate)) _tf_pub_rate)
  (:tf_ref_frame
   (&optional __tf_ref_frame)
   (if __tf_ref_frame (setq _tf_ref_frame __tf_ref_frame)) _tf_ref_frame)
  (:tf_frame_in
   (&optional __tf_frame_in)
   (if __tf_frame_in (setq _tf_frame_in __tf_frame_in)) _tf_frame_in)
  (:tf_frame_out
   (&optional __tf_frame_out)
   (if __tf_frame_out (setq _tf_frame_out __tf_frame_out)) _tf_frame_out)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:position_scale
   (&optional __position_scale)
   (if __position_scale (setq _position_scale __position_scale)) _position_scale)
  (:noise_type
   (&optional __noise_type)
   (if __noise_type (setq _noise_type __noise_type)) _noise_type)
  (:sigma_roll_pitch
   (&optional __sigma_roll_pitch)
   (if __sigma_roll_pitch (setq _sigma_roll_pitch __sigma_roll_pitch)) _sigma_roll_pitch)
  (:sigma_yaw
   (&optional __sigma_yaw)
   (if __sigma_yaw (setq _sigma_yaw __sigma_yaw)) _sigma_yaw)
  (:sigma_xy
   (&optional __sigma_xy)
   (if __sigma_xy (setq _sigma_xy __sigma_xy)) _sigma_xy)
  (:sigma_z
   (&optional __sigma_z)
   (if __sigma_z (setq _sigma_z __sigma_z)) _sigma_z)
  (:random_walk_k_xy
   (&optional __random_walk_k_xy)
   (if __random_walk_k_xy (setq _random_walk_k_xy __random_walk_k_xy)) _random_walk_k_xy)
  (:random_walk_k_z
   (&optional __random_walk_k_z)
   (if __random_walk_k_z (setq _random_walk_k_z __random_walk_k_z)) _random_walk_k_z)
  (:random_walk_sigma_xy
   (&optional __random_walk_sigma_xy)
   (if __random_walk_sigma_xy (setq _random_walk_sigma_xy __random_walk_sigma_xy)) _random_walk_sigma_xy)
  (:random_walk_sigma_z
   (&optional __random_walk_sigma_z)
   (if __random_walk_sigma_z (setq _random_walk_sigma_z __random_walk_sigma_z)) _random_walk_sigma_z)
  (:random_walk_tau_xy
   (&optional __random_walk_tau_xy)
   (if __random_walk_tau_xy (setq _random_walk_tau_xy __random_walk_tau_xy)) _random_walk_tau_xy)
  (:random_walk_tau_z
   (&optional __random_walk_tau_z)
   (if __random_walk_tau_z (setq _random_walk_tau_z __random_walk_tau_z)) _random_walk_tau_z)
  (:serialization-length
   ()
   (+
    ;; float64 _tf_pub_rate
    8
    ;; string _tf_ref_frame
    4 (length _tf_ref_frame)
    ;; string _tf_frame_in
    4 (length _tf_frame_in)
    ;; string _tf_frame_out
    4 (length _tf_frame_out)
    ;; int32 _delay
    4
    ;; float64 _position_scale
    8
    ;; string _noise_type
    4 (length _noise_type)
    ;; float64 _sigma_roll_pitch
    8
    ;; float64 _sigma_yaw
    8
    ;; float64 _sigma_xy
    8
    ;; float64 _sigma_z
    8
    ;; float64 _random_walk_k_xy
    8
    ;; float64 _random_walk_k_z
    8
    ;; float64 _random_walk_sigma_xy
    8
    ;; float64 _random_walk_sigma_z
    8
    ;; float64 _random_walk_tau_xy
    8
    ;; float64 _random_walk_tau_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _tf_pub_rate
       (sys::poke _tf_pub_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _tf_ref_frame
       (write-long (length _tf_ref_frame) s) (princ _tf_ref_frame s)
     ;; string _tf_frame_in
       (write-long (length _tf_frame_in) s) (princ _tf_frame_in s)
     ;; string _tf_frame_out
       (write-long (length _tf_frame_out) s) (princ _tf_frame_out s)
     ;; int32 _delay
       (write-long _delay s)
     ;; float64 _position_scale
       (sys::poke _position_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _noise_type
       (write-long (length _noise_type) s) (princ _noise_type s)
     ;; float64 _sigma_roll_pitch
       (sys::poke _sigma_roll_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma_yaw
       (sys::poke _sigma_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma_xy
       (sys::poke _sigma_xy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma_z
       (sys::poke _sigma_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_k_xy
       (sys::poke _random_walk_k_xy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_k_z
       (sys::poke _random_walk_k_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_sigma_xy
       (sys::poke _random_walk_sigma_xy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_sigma_z
       (sys::poke _random_walk_sigma_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_tau_xy
       (sys::poke _random_walk_tau_xy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _random_walk_tau_z
       (sys::poke _random_walk_tau_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _tf_pub_rate
     (setq _tf_pub_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _tf_ref_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tf_ref_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tf_frame_in
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tf_frame_in (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tf_frame_out
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tf_frame_out (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _delay
     (setq _delay (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _position_scale
     (setq _position_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _noise_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _noise_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _sigma_roll_pitch
     (setq _sigma_roll_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma_yaw
     (setq _sigma_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma_xy
     (setq _sigma_xy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma_z
     (setq _sigma_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_k_xy
     (setq _random_walk_k_xy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_k_z
     (setq _random_walk_k_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_sigma_xy
     (setq _random_walk_sigma_xy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_sigma_z
     (setq _random_walk_sigma_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_tau_xy
     (setq _random_walk_tau_xy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _random_walk_tau_z
     (setq _random_walk_tau_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vicon_bridge::TfDistortInfo :md5sum-) "a7025291415a53264a70b836a949be8d")
(setf (get vicon_bridge::TfDistortInfo :datatype-) "vicon_bridge/TfDistortInfo")
(setf (get vicon_bridge::TfDistortInfo :definition-)
      "float64 tf_pub_rate
string tf_ref_frame
string tf_frame_in
string tf_frame_out
int32 delay
float64 position_scale
string noise_type
float64 sigma_roll_pitch
float64 sigma_yaw
float64 sigma_xy
float64 sigma_z
float64 random_walk_k_xy
float64 random_walk_k_z
float64 random_walk_sigma_xy
float64 random_walk_sigma_z
float64 random_walk_tau_xy
float64 random_walk_tau_z
")



(provide :vicon_bridge/TfDistortInfo "a7025291415a53264a70b836a949be8d")


