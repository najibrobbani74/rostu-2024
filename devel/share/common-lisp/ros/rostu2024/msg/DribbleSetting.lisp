; Auto-generated. Do not edit!


(cl:in-package rostu2024-msg)


;//! \htmlinclude DribbleSetting.msg.html

(cl:defclass <DribbleSetting> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass DribbleSetting (<DribbleSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DribbleSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DribbleSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu2024-msg:<DribbleSetting> is deprecated: use rostu2024-msg:DribbleSetting instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DribbleSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu2024-msg:speed-val is deprecated.  Use rostu2024-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DribbleSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu2024-msg:status-val is deprecated.  Use rostu2024-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DribbleSetting>) ostream)
  "Serializes a message object of type '<DribbleSetting>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DribbleSetting>) istream)
  "Deserializes a message object of type '<DribbleSetting>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DribbleSetting>)))
  "Returns string type for a message object of type '<DribbleSetting>"
  "rostu2024/DribbleSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DribbleSetting)))
  "Returns string type for a message object of type 'DribbleSetting"
  "rostu2024/DribbleSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DribbleSetting>)))
  "Returns md5sum for a message object of type '<DribbleSetting>"
  "18668401ab651fdaa2cebd8927c1fb8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DribbleSetting)))
  "Returns md5sum for a message object of type 'DribbleSetting"
  "18668401ab651fdaa2cebd8927c1fb8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DribbleSetting>)))
  "Returns full string definition for message of type '<DribbleSetting>"
  (cl:format cl:nil "float64 speed~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DribbleSetting)))
  "Returns full string definition for message of type 'DribbleSetting"
  (cl:format cl:nil "float64 speed~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DribbleSetting>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DribbleSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'DribbleSetting
    (cl:cons ':speed (speed msg))
    (cl:cons ':status (status msg))
))
