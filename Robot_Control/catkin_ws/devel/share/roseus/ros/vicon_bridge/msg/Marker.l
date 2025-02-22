;; Auto-generated. Do not edit!


(when (boundp 'vicon_bridge::Marker)
  (if (not (find-package "VICON_BRIDGE"))
    (make-package "VICON_BRIDGE"))
  (shadow 'Marker (find-package "VICON_BRIDGE")))
(unless (find-package "VICON_BRIDGE::MARKER")
  (make-package "VICON_BRIDGE::MARKER"))

(in-package "ROS")
;;//! \htmlinclude Marker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vicon_bridge::Marker
  :super ros::object
  :slots (_marker_name _subject_name _segment_name _translation _occluded ))

(defmethod vicon_bridge::Marker
  (:init
   (&key
    ((:marker_name __marker_name) "")
    ((:subject_name __subject_name) "")
    ((:segment_name __segment_name) "")
    ((:translation __translation) (instance geometry_msgs::Point :init))
    ((:occluded __occluded) nil)
    )
   (send-super :init)
   (setq _marker_name (string __marker_name))
   (setq _subject_name (string __subject_name))
   (setq _segment_name (string __segment_name))
   (setq _translation __translation)
   (setq _occluded __occluded)
   self)
  (:marker_name
   (&optional __marker_name)
   (if __marker_name (setq _marker_name __marker_name)) _marker_name)
  (:subject_name
   (&optional __subject_name)
   (if __subject_name (setq _subject_name __subject_name)) _subject_name)
  (:segment_name
   (&optional __segment_name)
   (if __segment_name (setq _segment_name __segment_name)) _segment_name)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:occluded
   (&optional (__occluded :null))
   (if (not (eq __occluded :null)) (setq _occluded __occluded)) _occluded)
  (:serialization-length
   ()
   (+
    ;; string _marker_name
    4 (length _marker_name)
    ;; string _subject_name
    4 (length _subject_name)
    ;; string _segment_name
    4 (length _segment_name)
    ;; geometry_msgs/Point _translation
    (send _translation :serialization-length)
    ;; bool _occluded
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _marker_name
       (write-long (length _marker_name) s) (princ _marker_name s)
     ;; string _subject_name
       (write-long (length _subject_name) s) (princ _subject_name s)
     ;; string _segment_name
       (write-long (length _segment_name) s) (princ _segment_name s)
     ;; geometry_msgs/Point _translation
       (send _translation :serialize s)
     ;; bool _occluded
       (if _occluded (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _subject_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _segment_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segment_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; bool _occluded
     (setq _occluded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get vicon_bridge::Marker :md5sum-) "da6f93747c24b19a71932ae4b040f489")
(setf (get vicon_bridge::Marker :datatype-) "vicon_bridge/Marker")
(setf (get vicon_bridge::Marker :definition-)
      "string marker_name
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



(provide :vicon_bridge/Marker "da6f93747c24b19a71932ae4b040f489")


