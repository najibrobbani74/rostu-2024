;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::KickerModule)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'KickerModule (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::KICKERMODULE")
  (make-package "ROSTU2024::KICKERMODULE"))

(in-package "ROS")
;;//! \htmlinclude KickerModule.msg.html


(defclass rostu2024::KickerModule
  :super ros::object
  :slots (_trigger _charger _status ))

(defmethod rostu2024::KickerModule
  (:init
   (&key
    ((:trigger __trigger) nil)
    ((:charger __charger) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _trigger __trigger)
   (setq _charger __charger)
   (setq _status (string __status))
   self)
  (:trigger
   (&optional (__trigger :null))
   (if (not (eq __trigger :null)) (setq _trigger __trigger)) _trigger)
  (:charger
   (&optional (__charger :null))
   (if (not (eq __charger :null)) (setq _charger __charger)) _charger)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _trigger
    1
    ;; bool _charger
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _trigger
       (if _trigger (write-byte -1 s) (write-byte 0 s))
     ;; bool _charger
       (if _charger (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _trigger
     (setq _trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charger
     (setq _charger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rostu2024::KickerModule :md5sum-) "ba394d88a5c3e539dd36bff996be48d9")
(setf (get rostu2024::KickerModule :datatype-) "rostu2024/KickerModule")
(setf (get rostu2024::KickerModule :definition-)
      "bool trigger
bool charger
string status
")



(provide :rostu2024/KickerModule "ba394d88a5c3e539dd36bff996be48d9")


