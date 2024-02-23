; Auto-generated. Do not edit!


(cl:in-package rostu2024-msg)


;//! \htmlinclude Wheel.msg.html

(cl:defclass <Wheel> (roslisp-msg-protocol:ros-message)
  ((left_wheel
    :reader left_wheel
    :initarg :left_wheel
    :type cl:float
    :initform 0.0)
   (right_wheel
    :reader right_wheel
    :initarg :right_wheel
    :type cl:float
    :initform 0.0)
   (bottom_wheel
    :reader bottom_wheel
    :initarg :bottom_wheel
    :type cl:float
    :initform 0.0))
)

(cl:defclass Wheel (<Wheel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wheel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wheel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu2024-msg:<Wheel> is deprecated: use rostu2024-msg:Wheel instead.")))

(cl:ensure-generic-function 'left_wheel-val :lambda-list '(m))
(cl:defmethod left_wheel-val ((m <Wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu2024-msg:left_wheel-val is deprecated.  Use rostu2024-msg:left_wheel instead.")
  (left_wheel m))

(cl:ensure-generic-function 'right_wheel-val :lambda-list '(m))
(cl:defmethod right_wheel-val ((m <Wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu2024-msg:right_wheel-val is deprecated.  Use rostu2024-msg:right_wheel instead.")
  (right_wheel m))

(cl:ensure-generic-function 'bottom_wheel-val :lambda-list '(m))
(cl:defmethod bottom_wheel-val ((m <Wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu2024-msg:bottom_wheel-val is deprecated.  Use rostu2024-msg:bottom_wheel instead.")
  (bottom_wheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wheel>) ostream)
  "Serializes a message object of type '<Wheel>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bottom_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wheel>) istream)
  "Deserializes a message object of type '<Wheel>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_wheel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_wheel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_wheel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wheel>)))
  "Returns string type for a message object of type '<Wheel>"
  "rostu2024/Wheel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wheel)))
  "Returns string type for a message object of type 'Wheel"
  "rostu2024/Wheel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wheel>)))
  "Returns md5sum for a message object of type '<Wheel>"
  "3043d084108e8cb8de33e26dbb60e64b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wheel)))
  "Returns md5sum for a message object of type 'Wheel"
  "3043d084108e8cb8de33e26dbb60e64b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wheel>)))
  "Returns full string definition for message of type '<Wheel>"
  (cl:format cl:nil "float64 left_wheel~%float64 right_wheel~%float64 bottom_wheel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wheel)))
  "Returns full string definition for message of type 'Wheel"
  (cl:format cl:nil "float64 left_wheel~%float64 right_wheel~%float64 bottom_wheel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wheel>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wheel>))
  "Converts a ROS message object to a list"
  (cl:list 'Wheel
    (cl:cons ':left_wheel (left_wheel msg))
    (cl:cons ':right_wheel (right_wheel msg))
    (cl:cons ':bottom_wheel (bottom_wheel msg))
))
