; Auto-generated. Do not edit!


(cl:in-package graft-msg)


;//! \htmlinclude GraftControl.msg.html

(cl:defclass <GraftControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass GraftControl (<GraftControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraftControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraftControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graft-msg:<GraftControl> is deprecated: use graft-msg:GraftControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GraftControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:header-val is deprecated.  Use graft-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GraftControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:position-val is deprecated.  Use graft-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <GraftControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:rotation-val is deprecated.  Use graft-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <GraftControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:twist-val is deprecated.  Use graft-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GraftControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:acceleration-val is deprecated.  Use graft-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraftControl>) ostream)
  "Serializes a message object of type '<GraftControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraftControl>) istream)
  "Deserializes a message object of type '<GraftControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraftControl>)))
  "Returns string type for a message object of type '<GraftControl>"
  "graft/GraftControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraftControl)))
  "Returns string type for a message object of type 'GraftControl"
  "graft/GraftControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraftControl>)))
  "Returns md5sum for a message object of type '<GraftControl>"
  "f41b0858f042a487e729d7efdbffed39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraftControl)))
  "Returns md5sum for a message object of type 'GraftControl"
  "f41b0858f042a487e729d7efdbffed39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraftControl>)))
  "Returns full string definition for message of type '<GraftControl>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 rotation~%geometry_msgs/Twist twist~%geometry_msgs/Vector3 acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraftControl)))
  "Returns full string definition for message of type 'GraftControl"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Point position~%geometry_msgs/Vector3 rotation~%geometry_msgs/Twist twist~%geometry_msgs/Vector3 acceleration~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraftControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraftControl>))
  "Converts a ROS message object to a list"
  (cl:list 'GraftControl
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
))
