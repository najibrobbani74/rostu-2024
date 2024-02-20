;; Auto-generated. Do not edit!


(when (boundp 'rostu_interfaces::KickerSetting)
  (if (not (find-package "ROSTU_INTERFACES"))
    (make-package "ROSTU_INTERFACES"))
  (shadow 'KickerSetting (find-package "ROSTU_INTERFACES")))
(unless (find-package "ROSTU_INTERFACES::KICKERSETTING")
  (make-package "ROSTU_INTERFACES::KICKERSETTING"))

(in-package "ROS")
;;//! \htmlinclude KickerSetting.msg.html


(defclass rostu_interfaces::KickerSetting
  :super ros::object
  :slots (_charge_time _action ))

(defmethod rostu_interfaces::KickerSetting
  (:init
   (&key
    ((:charge_time __charge_time) 0)
    ((:action __action) nil)
    )
   (send-super :init)
   (setq _charge_time (round __charge_time))
   (setq _action __action)
   self)
  (:charge_time
   (&optional __charge_time)
   (if __charge_time (setq _charge_time __charge_time)) _charge_time)
  (:action
   (&optional (__action :null))
   (if (not (eq __action :null)) (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int64 _charge_time
    8
    ;; bool _action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _charge_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _charge_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _charge_time) (= (length (_charge_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_charge_time . bv) 0) 0) s)
              (write-long (ash (elt (_charge_time . bv) 1) -1) s))
             ((and (class _charge_time) (= (length (_charge_time . bv)) 1)) ;; big1
              (write-long (elt (_charge_time . bv) 0) s)
              (write-long (if (>= _charge_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _charge_time s)(write-long (if (>= _charge_time 0) 0 #xffffffff) s)))
     ;; bool _action
       (if _action (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _charge_time
#+(or :alpha :irix6 :x86_64)
      (setf _charge_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _charge_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _action
     (setq _action (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rostu_interfaces::KickerSetting :md5sum-) "5eb35c50ef959f485735294a09362452")
(setf (get rostu_interfaces::KickerSetting :datatype-) "rostu_interfaces/KickerSetting")
(setf (get rostu_interfaces::KickerSetting :definition-)
      "int64 charge_time
bool action
")



(provide :rostu_interfaces/KickerSetting "5eb35c50ef959f485735294a09362452")


