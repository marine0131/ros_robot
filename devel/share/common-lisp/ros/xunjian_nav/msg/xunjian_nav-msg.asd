
(cl:in-package :asdf)

(defsystem "xunjian_nav-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Wheelvelocity" :depends-on ("_package_Wheelvelocity"))
    (:file "_package_Wheelvelocity" :depends-on ("_package"))
    (:file "Sensor" :depends-on ("_package_Sensor"))
    (:file "_package_Sensor" :depends-on ("_package"))
    (:file "Ultrasound" :depends-on ("_package_Ultrasound"))
    (:file "_package_Ultrasound" :depends-on ("_package"))
  ))