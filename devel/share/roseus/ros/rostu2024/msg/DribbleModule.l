;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::DribbleModule)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'DribbleModule (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::DRIBBLEMODULE")
  (make-package "ROSTU2024::DRIBBLEMODULE"))

(in-package "ROS")
;;//! \htmlinclude DribbleModule.msg.html


(defclass rostu2024::DribbleModule
  :super ros::object
  :slots (_left_motor _right_motor ))

(defmethod rostu2024::DribbleModule
  (:init
   (&key
    ((:left_motor __left_motor) 0.0)
    ((:right_motor __right_motor) 0.0)
    )
   (send-super :init)
   (setq _left_motor (float __left_motor))
   (setq _right_motor (float __right_motor))
   self)
  (:left_motor
   (&optional __left_motor)
   (if __left_motor (setq _left_motor __left_motor)) _left_motor)
  (:right_motor
   (&optional __right_motor)
   (if __right_motor (setq _right_motor __right_motor)) _right_motor)
  (:serialization-length
   ()
   (+
    ;; float64 _left_motor
    8
    ;; float64 _right_motor
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_motor
       (sys::poke _left_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_motor
       (sys::poke _right_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_motor
     (setq _left_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_motor
     (setq _right_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rostu2024::DribbleModule :md5sum-) "fbb6fd297edf2b990d3b5effd8454d72")
(setf (get rostu2024::DribbleModule :datatype-) "rostu2024/DribbleModule")
(setf (get rostu2024::DribbleModule :definition-)
      "float64 left_motor
float64 right_motor
")



(provide :rostu2024/DribbleModule "fbb6fd297edf2b990d3b5effd8454d72")


