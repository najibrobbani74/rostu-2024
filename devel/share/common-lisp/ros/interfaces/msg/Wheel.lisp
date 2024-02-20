; Auto-generated. Do not edit!


(cl:in-package interfaces-msg)


;//! \htmlinclude Wheel.msg.html

(cl:defclass <Wheel> (roslisp-msg-protocol:ros-message)
  ((halo
    :reader halo
    :initarg :halo
    :type cl:string
    :initform ""))
)

(cl:defclass Wheel (<Wheel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wheel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wheel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interfaces-msg:<Wheel> is deprecated: use interfaces-msg:Wheel instead.")))

(cl:ensure-generic-function 'halo-val :lambda-list '(m))
(cl:defmethod halo-val ((m <Wheel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interfaces-msg:halo-val is deprecated.  Use interfaces-msg:halo instead.")
  (halo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wheel>) ostream)
  "Serializes a message object of type '<Wheel>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'halo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'halo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wheel>) istream)
  "Deserializes a message object of type '<Wheel>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'halo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'halo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wheel>)))
  "Returns string type for a message object of type '<Wheel>"
  "interfaces/Wheel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wheel)))
  "Returns string type for a message object of type 'Wheel"
  "interfaces/Wheel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wheel>)))
  "Returns md5sum for a message object of type '<Wheel>"
  "1a3795d70ccd33e3facf9c5d221b1ac7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wheel)))
  "Returns md5sum for a message object of type 'Wheel"
  "1a3795d70ccd33e3facf9c5d221b1ac7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wheel>)))
  "Returns full string definition for message of type '<Wheel>"
  (cl:format cl:nil "string halo~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wheel)))
  "Returns full string definition for message of type 'Wheel"
  (cl:format cl:nil "string halo~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wheel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'halo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wheel>))
  "Converts a ROS message object to a list"
  (cl:list 'Wheel
    (cl:cons ':halo (halo msg))
))
