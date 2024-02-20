; Auto-generated. Do not edit!


(cl:in-package rostu_interfaces-msg)


;//! \htmlinclude Dribble.msg.html

(cl:defclass <Dribble> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Dribble (<Dribble>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dribble>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dribble)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu_interfaces-msg:<Dribble> is deprecated: use rostu_interfaces-msg:Dribble instead.")))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <Dribble>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:left_motor-val is deprecated.  Use rostu_interfaces-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <Dribble>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:right_motor-val is deprecated.  Use rostu_interfaces-msg:right_motor instead.")
  (right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dribble>) ostream)
  "Serializes a message object of type '<Dribble>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dribble>) istream)
  "Deserializes a message object of type '<Dribble>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dribble>)))
  "Returns string type for a message object of type '<Dribble>"
  "rostu_interfaces/Dribble")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dribble)))
  "Returns string type for a message object of type 'Dribble"
  "rostu_interfaces/Dribble")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dribble>)))
  "Returns md5sum for a message object of type '<Dribble>"
  "fbb6fd297edf2b990d3b5effd8454d72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dribble)))
  "Returns md5sum for a message object of type 'Dribble"
  "fbb6fd297edf2b990d3b5effd8454d72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dribble>)))
  "Returns full string definition for message of type '<Dribble>"
  (cl:format cl:nil "float64 left_motor~%float64 right_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dribble)))
  "Returns full string definition for message of type 'Dribble"
  (cl:format cl:nil "float64 left_motor~%float64 right_motor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dribble>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dribble>))
  "Converts a ROS message object to a list"
  (cl:list 'Dribble
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
))
