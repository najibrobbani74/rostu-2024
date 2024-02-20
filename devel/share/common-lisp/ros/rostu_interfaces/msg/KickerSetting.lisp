; Auto-generated. Do not edit!


(cl:in-package rostu_interfaces-msg)


;//! \htmlinclude KickerSetting.msg.html

(cl:defclass <KickerSetting> (roslisp-msg-protocol:ros-message)
  ((charge_time
    :reader charge_time
    :initarg :charge_time
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KickerSetting (<KickerSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickerSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickerSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu_interfaces-msg:<KickerSetting> is deprecated: use rostu_interfaces-msg:KickerSetting instead.")))

(cl:ensure-generic-function 'charge_time-val :lambda-list '(m))
(cl:defmethod charge_time-val ((m <KickerSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:charge_time-val is deprecated.  Use rostu_interfaces-msg:charge_time instead.")
  (charge_time m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <KickerSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:action-val is deprecated.  Use rostu_interfaces-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickerSetting>) ostream)
  "Serializes a message object of type '<KickerSetting>"
  (cl:let* ((signed (cl:slot-value msg 'charge_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'action) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickerSetting>) istream)
  "Deserializes a message object of type '<KickerSetting>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'action) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickerSetting>)))
  "Returns string type for a message object of type '<KickerSetting>"
  "rostu_interfaces/KickerSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickerSetting)))
  "Returns string type for a message object of type 'KickerSetting"
  "rostu_interfaces/KickerSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickerSetting>)))
  "Returns md5sum for a message object of type '<KickerSetting>"
  "5eb35c50ef959f485735294a09362452")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickerSetting)))
  "Returns md5sum for a message object of type 'KickerSetting"
  "5eb35c50ef959f485735294a09362452")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickerSetting>)))
  "Returns full string definition for message of type '<KickerSetting>"
  (cl:format cl:nil "int64 charge_time~%bool action~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickerSetting)))
  "Returns full string definition for message of type 'KickerSetting"
  (cl:format cl:nil "int64 charge_time~%bool action~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickerSetting>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickerSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'KickerSetting
    (cl:cons ':charge_time (charge_time msg))
    (cl:cons ':action (action msg))
))
