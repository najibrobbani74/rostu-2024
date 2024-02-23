;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::Wheel)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'Wheel (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::WHEEL")
  (make-package "ROSTU2024::WHEEL"))

(in-package "ROS")
;;//! \htmlinclude Wheel.msg.html


(defclass rostu2024::Wheel
  :super ros::object
  :slots (_left_wheel _right_wheel _bottom_wheel ))

(defmethod rostu2024::Wheel
  (:init
   (&key
    ((:left_wheel __left_wheel) 0.0)
    ((:right_wheel __right_wheel) 0.0)
    ((:bottom_wheel __bottom_wheel) 0.0)
    )
   (send-super :init)
   (setq _left_wheel (float __left_wheel))
   (setq _right_wheel (float __right_wheel))
   (setq _bottom_wheel (float __bottom_wheel))
   self)
  (:left_wheel
   (&optional __left_wheel)
   (if __left_wheel (setq _left_wheel __left_wheel)) _left_wheel)
  (:right_wheel
   (&optional __right_wheel)
   (if __right_wheel (setq _right_wheel __right_wheel)) _right_wheel)
  (:bottom_wheel
   (&optional __bottom_wheel)
   (if __bottom_wheel (setq _bottom_wheel __bottom_wheel)) _bottom_wheel)
  (:serialization-length
   ()
   (+
    ;; float64 _left_wheel
    8
    ;; float64 _right_wheel
    8
    ;; float64 _bottom_wheel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left_wheel
       (sys::poke _left_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_wheel
       (sys::poke _right_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottom_wheel
       (sys::poke _bottom_wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left_wheel
     (setq _left_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_wheel
     (setq _right_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottom_wheel
     (setq _bottom_wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rostu2024::Wheel :md5sum-) "3043d084108e8cb8de33e26dbb60e64b")
(setf (get rostu2024::Wheel :datatype-) "rostu2024/Wheel")
(setf (get rostu2024::Wheel :definition-)
      "float64 left_wheel
float64 right_wheel
float64 bottom_wheel
")



(provide :rostu2024/Wheel "3043d084108e8cb8de33e26dbb60e64b")


