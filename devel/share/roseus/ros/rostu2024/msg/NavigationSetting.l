;; Auto-generated. Do not edit!


(when (boundp 'rostu2024::NavigationSetting)
  (if (not (find-package "ROSTU2024"))
    (make-package "ROSTU2024"))
  (shadow 'NavigationSetting (find-package "ROSTU2024")))
(unless (find-package "ROSTU2024::NAVIGATIONSETTING")
  (make-package "ROSTU2024::NAVIGATIONSETTING"))

(in-package "ROS")
;;//! \htmlinclude NavigationSetting.msg.html


(defclass rostu2024::NavigationSetting
  :super ros::object
  :slots (_speed _direction _rotation ))

(defmethod rostu2024::NavigationSetting
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:direction __direction) 0.0)
    ((:rotation __rotation) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _direction (float __direction))
   (setq _rotation (float __rotation))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ;; float64 _direction
    8
    ;; float64 _rotation
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotation
       (sys::poke _rotation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _direction
     (setq _direction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotation
     (setq _rotation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rostu2024::NavigationSetting :md5sum-) "9f31eebfa73f5c8acdb331fc8bb73189")
(setf (get rostu2024::NavigationSetting :datatype-) "rostu2024/NavigationSetting")
(setf (get rostu2024::NavigationSetting :definition-)
      "float64 speed
float64 direction
float64 rotation
")



(provide :rostu2024/NavigationSetting "9f31eebfa73f5c8acdb331fc8bb73189")


