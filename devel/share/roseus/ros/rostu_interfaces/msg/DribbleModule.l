;; Auto-generated. Do not edit!


(when (boundp 'rostu_interfaces::DribbleModule)
  (if (not (find-package "ROSTU_INTERFACES"))
    (make-package "ROSTU_INTERFACES"))
  (shadow 'DribbleModule (find-package "ROSTU_INTERFACES")))
(unless (find-package "ROSTU_INTERFACES::DRIBBLEMODULE")
  (make-package "ROSTU_INTERFACES::DRIBBLEMODULE"))

(in-package "ROS")
;;//! \htmlinclude DribbleModule.msg.html


(defclass rostu_interfaces::DribbleModule
  :super ros::object
  :slots (_left_motor _right_motor ))

(defmethod rostu_interfaces::DribbleModule
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

(setf (get rostu_interfaces::DribbleModule :md5sum-) "fbb6fd297edf2b990d3b5effd8454d72")
(setf (get rostu_interfaces::DribbleModule :datatype-) "rostu_interfaces/DribbleModule")
(setf (get rostu_interfaces::DribbleModule :definition-)
      "float64 left_motor
float64 right_motor
")



(provide :rostu_interfaces/DribbleModule "fbb6fd297edf2b990d3b5effd8454d72")


