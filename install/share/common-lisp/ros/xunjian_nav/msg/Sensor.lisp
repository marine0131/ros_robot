; Auto-generated. Do not edit!


(cl:in-package xunjian_nav-msg)


;//! \htmlinclude Sensor.msg.html

(cl:defclass <Sensor> (roslisp-msg-protocol:ros-message)
  ((yawAngle
    :reader yawAngle
    :initarg :yawAngle
    :type cl:float
    :initform 0.0)
   (leftEncoder
    :reader leftEncoder
    :initarg :leftEncoder
    :type cl:integer
    :initform 0)
   (rightEncoder
    :reader rightEncoder
    :initarg :rightEncoder
    :type cl:integer
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:integer
    :initform 0)
   (w
    :reader w
    :initarg :w
    :type cl:integer
    :initform 0))
)

(cl:defclass Sensor (<Sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xunjian_nav-msg:<Sensor> is deprecated: use xunjian_nav-msg:Sensor instead.")))

(cl:ensure-generic-function 'yawAngle-val :lambda-list '(m))
(cl:defmethod yawAngle-val ((m <Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:yawAngle-val is deprecated.  Use xunjian_nav-msg:yawAngle instead.")
  (yawAngle m))

(cl:ensure-generic-function 'leftEncoder-val :lambda-list '(m))
(cl:defmethod leftEncoder-val ((m <Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:leftEncoder-val is deprecated.  Use xunjian_nav-msg:leftEncoder instead.")
  (leftEncoder m))

(cl:ensure-generic-function 'rightEncoder-val :lambda-list '(m))
(cl:defmethod rightEncoder-val ((m <Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:rightEncoder-val is deprecated.  Use xunjian_nav-msg:rightEncoder instead.")
  (rightEncoder m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:vx-val is deprecated.  Use xunjian_nav-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xunjian_nav-msg:w-val is deprecated.  Use xunjian_nav-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sensor>) ostream)
  "Serializes a message object of type '<Sensor>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yawAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'leftEncoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightEncoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'w)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sensor>) istream)
  "Deserializes a message object of type '<Sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftEncoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightEncoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'w) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sensor>)))
  "Returns string type for a message object of type '<Sensor>"
  "xunjian_nav/Sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sensor)))
  "Returns string type for a message object of type 'Sensor"
  "xunjian_nav/Sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sensor>)))
  "Returns md5sum for a message object of type '<Sensor>"
  "930310bf8f953403d26333dc05df3fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sensor)))
  "Returns md5sum for a message object of type 'Sensor"
  "930310bf8f953403d26333dc05df3fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sensor>)))
  "Returns full string definition for message of type '<Sensor>"
  (cl:format cl:nil "float64 yawAngle~%int32   leftEncoder~%int32   rightEncoder~%int32   vx~%int32   w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sensor)))
  "Returns full string definition for message of type 'Sensor"
  (cl:format cl:nil "float64 yawAngle~%int32   leftEncoder~%int32   rightEncoder~%int32   vx~%int32   w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sensor>))
  (cl:+ 0
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'Sensor
    (cl:cons ':yawAngle (yawAngle msg))
    (cl:cons ':leftEncoder (leftEncoder msg))
    (cl:cons ':rightEncoder (rightEncoder msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':w (w msg))
))
