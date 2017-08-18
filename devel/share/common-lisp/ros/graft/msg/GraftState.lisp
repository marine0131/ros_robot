; Auto-generated. Do not edit!


(cl:in-package graft-msg)


;//! \htmlinclude GraftState.msg.html

(cl:defclass <GraftState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyro_bias
    :reader gyro_bias
    :initarg :gyro_bias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accel_bias
    :reader accel_bias
    :initarg :accel_bias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 324 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GraftState (<GraftState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraftState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraftState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name graft-msg:<GraftState> is deprecated: use graft-msg:GraftState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:header-val is deprecated.  Use graft-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:pose-val is deprecated.  Use graft-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:twist-val is deprecated.  Use graft-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:acceleration-val is deprecated.  Use graft-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'gyro_bias-val :lambda-list '(m))
(cl:defmethod gyro_bias-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:gyro_bias-val is deprecated.  Use graft-msg:gyro_bias instead.")
  (gyro_bias m))

(cl:ensure-generic-function 'accel_bias-val :lambda-list '(m))
(cl:defmethod accel_bias-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:accel_bias-val is deprecated.  Use graft-msg:accel_bias instead.")
  (accel_bias m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <GraftState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader graft-msg:covariance-val is deprecated.  Use graft-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraftState>) ostream)
  "Serializes a message object of type '<GraftState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro_bias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel_bias) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraftState>) istream)
  "Deserializes a message object of type '<GraftState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro_bias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel_bias) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 324))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 324)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraftState>)))
  "Returns string type for a message object of type '<GraftState>"
  "graft/GraftState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraftState)))
  "Returns string type for a message object of type 'GraftState"
  "graft/GraftState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraftState>)))
  "Returns md5sum for a message object of type '<GraftState>"
  "4744aac037427813b68053f3a09da177")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraftState)))
  "Returns md5sum for a message object of type 'GraftState"
  "4744aac037427813b68053f3a09da177")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraftState>)))
  "Returns full string definition for message of type '<GraftState>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 gyro_bias~%geometry_msgs/Vector3 accel_bias~%~%float64[324] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraftState)))
  "Returns full string definition for message of type 'GraftState"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%geometry_msgs/Twist twist~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 gyro_bias~%geometry_msgs/Vector3 accel_bias~%~%float64[324] covariance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraftState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro_bias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel_bias))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraftState>))
  "Converts a ROS message object to a list"
  (cl:list 'GraftState
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':gyro_bias (gyro_bias msg))
    (cl:cons ':accel_bias (accel_bias msg))
    (cl:cons ':covariance (covariance msg))
))
