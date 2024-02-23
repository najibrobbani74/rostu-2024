;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::RobotStatus)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'RobotStatus (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::ROBOTSTATUS")
  (make-package "ROSTU2024::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass rostu2024::RobotStatus
  :super ros::object
  :slots (_status ))

(defmethod rostu2024::RobotStatus
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rostu2024::RobotStatus :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get rostu2024::RobotStatus :datatype-) "rostu2024/RobotStatus")
(setf (get rostu2024::RobotStatus :definition-)
      "string status
")



(provide :rostu2024/RobotStatus "4fe5af303955c287688e7347e9b00278")


