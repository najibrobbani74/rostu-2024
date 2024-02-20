; Auto-generated. Do not edit!


(cl:in-package rostu_interfaces-msg)


;//! \htmlinclude KickerModule.msg.html

(cl:defclass <KickerModule> (roslisp-msg-protocol:ros-message)
  ((trigger
    :reader trigger
    :initarg :trigger
    :type cl:boolean
    :initform cl:nil)
   (charger
    :reader charger
    :initarg :charger
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass KickerModule (<KickerModule>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KickerModule>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KickerModule)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rostu_interfaces-msg:<KickerModule> is deprecated: use rostu_interfaces-msg:KickerModule instead.")))

(cl:ensure-generic-function 'trigger-val :lambda-list '(m))
(cl:defmethod trigger-val ((m <KickerModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:trigger-val is deprecated.  Use rostu_interfaces-msg:trigger instead.")
  (trigger m))

(cl:ensure-generic-function 'charger-val :lambda-list '(m))
(cl:defmethod charger-val ((m <KickerModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:charger-val is deprecated.  Use rostu_interfaces-msg:charger instead.")
  (charger m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <KickerModule>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rostu_interfaces-msg:status-val is deprecated.  Use rostu_interfaces-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KickerModule>) ostream)
  "Serializes a message object of type '<KickerModule>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charger) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KickerModule>) istream)
  "Deserializes a message object of type '<KickerModule>"
    (cl:setf (cl:slot-value msg 'trigger) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charger) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KickerModule>)))
  "Returns string type for a message object of type '<KickerModule>"
  "rostu_interfaces/KickerModule")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KickerModule)))
  "Returns string type for a message object of type 'KickerModule"
  "rostu_interfaces/KickerModule")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KickerModule>)))
  "Returns md5sum for a message object of type '<KickerModule>"
  "ba394d88a5c3e539dd36bff996be48d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KickerModule)))
  "Returns md5sum for a message object of type 'KickerModule"
  "ba394d88a5c3e539dd36bff996be48d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KickerModule>)))
  "Returns full string definition for message of type '<KickerModule>"
  (cl:format cl:nil "bool trigger~%bool charger~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KickerModule)))
  "Returns full string definition for message of type 'KickerModule"
  (cl:format cl:nil "bool trigger~%bool charger~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KickerModule>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KickerModule>))
  "Converts a ROS message object to a list"
  (cl:list 'KickerModule
    (cl:cons ':trigger (trigger msg))
    (cl:cons ':charger (charger msg))
    (cl:cons ':status (status msg))
))
