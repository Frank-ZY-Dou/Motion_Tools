
(cl:in-package :asdf)

(defsystem "vicon_bridge-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "viconCalibrateSegment" :depends-on ("_package_viconCalibrateSegment"))
    (:file "_package_viconCalibrateSegment" :depends-on ("_package"))
    (:file "viconGrabPose" :depends-on ("_package_viconGrabPose"))
    (:file "_package_viconGrabPose" :depends-on ("_package"))
  ))