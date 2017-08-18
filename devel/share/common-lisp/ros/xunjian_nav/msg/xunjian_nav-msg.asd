
(cl:in-package :asdf)

(defsystem "xunjian_nav-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GridPose" :depends-on ("_package_GridPose"))
    (:file "_package_GridPose" :depends-on ("_package"))
    (:file "Wheelvelocity" :depends-on ("_package_Wheelvelocity"))
    (:file "_package_Wheelvelocity" :depends-on ("_package"))
    (:file "GridPoint" :depends-on ("_package_GridPoint"))
    (:file "_package_GridPoint" :depends-on ("_package"))
    (:file "GridLaser" :depends-on ("_package_GridLaser"))
    (:file "_package_GridLaser" :depends-on ("_package"))
    (:file "Ultrasound" :depends-on ("_package_Ultrasound"))
    (:file "_package_Ultrasound" :depends-on ("_package"))
    (:file "Encoder" :depends-on ("_package_Encoder"))
    (:file "_package_Encoder" :depends-on ("_package"))
  ))