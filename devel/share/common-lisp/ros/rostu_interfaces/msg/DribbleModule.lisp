; Auto-generated. Do not edit!


(cl:in-package rostu_interfaces-msg)


;//! \htmlinclude DribbleModule.msg.html

(cl:defclass <DribbleModule> (roslisp-msg-protocol:ros-message)
  ((left_motor
    :reader left_motor
    :initarg :left_motor
    :type cl:float
    :initform 0.0)
   (right_motor
    :reader right_motor
    :initarg :right_motor
    :type cl:float
    :initform 0.0))
)

(cl:defclass DribbleModule (<DribbleModule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DribbleModule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DribbleModule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu_interfaces-msg:<DribbleModule> is deprecated: use rostu_interfaces-msg:DribbleModule instead.")))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <DribbleModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:left_motor-val is deprecated.  Use rostu_interfaces-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <DribbleModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:right_motor-val is deprecated.  Use rostu_interfaces-msg:right_motor instead.")
  (right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DribbleModule>) ostream)
  "Serializes a message object of type '<DribbleModule>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DribbleModule>) istream)
  "Deserializes a message object of type '<DribbleModule>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_motor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_motor) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DribbleModule>)))
  "Returns string type for a message object of type '<DribbleModule>"
  "rostu_interfaces/DribbleModule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DribbleModule)))
  "Returns string type for a message object of type 'DribbleModule"
  "rostu_interfaces/DribbleModule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DribbleModule>)))
  "Returns md5sum for a message object of type '<DribbleModule>"
  "fbb6fd297edf2b990d3b5effd8454d72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DribbleModule)))
  "Returns md5sum for a message object of type 'DribbleModule"
  "fbb6fd297edf2b990d3b5effd8454d72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DribbleModule>)))
  "Returns full string definition for message of type '<DribbleModule>"
  (cl:format cl:nil "float64 left_motor~%float64 right_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DribbleModule)))
  "Returns full string definition for message of type 'DribbleModule"
  (cl:format cl:nil "float64 left_motor~%float64 right_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DribbleModule>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DribbleModule>))
  "Converts a ROS message object to a list"
  (cl:list 'DribbleModule
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
))
