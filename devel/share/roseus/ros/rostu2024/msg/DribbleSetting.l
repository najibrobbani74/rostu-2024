;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::DribbleSetting)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'DribbleSetting (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::DRIBBLESETTING")
  (make-package "ROSTU2024::DRIBBLESETTING"))

(in-package "ROS")
;;//! \htmlinclude DribbleSetting.msg.html


(defclass rostu2024::DribbleSetting
  :super ros::object
  :slots (_speed _status ))

(defmethod rostu2024::DribbleSetting
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _status (string __status))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rostu2024::DribbleSetting :md5sum-) "18668401ab651fdaa2cebd8927c1fb8f")
(setf (get rostu2024::DribbleSetting :datatype-) "rostu2024/DribbleSetting")
(setf (get rostu2024::DribbleSetting :definition-)
      "float64 speed
string status
")



(provide :rostu2024/DribbleSetting "18668401ab651fdaa2cebd8927c1fb8f")


