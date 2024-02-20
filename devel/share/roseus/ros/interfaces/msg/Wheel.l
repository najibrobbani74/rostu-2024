;; Auto-generated. Do not edit!


(when (boundp 'interfaces::Wheel)
  (if (not (find-package "INTERFACES"))
    (make-package "INTERFACES"))
  (shadow 'Wheel (find-package "INTERFACES")))
(unless (find-package "INTERFACES::WHEEL")
  (make-package "INTERFACES::WHEEL"))

(in-package "ROS")
;;//! \htmlinclude Wheel.msg.html


(defclass interfaces::Wheel
  :super ros::object
  :slots (_halo ))

(defmethod interfaces::Wheel
  (:init
   (&key
    ((:halo __halo) "")
    )
   (send-super :init)
   (setq _halo (string __halo))
   self)
  (:halo
   (&optional __halo)
   (if __halo (setq _halo __halo)) _halo)
  (:serialization-length
   ()
   (+
    ;; string _halo
    4 (length _halo)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _halo
       (write-long (length _halo) s) (princ _halo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _halo
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _halo (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get interfaces::Wheel :md5sum-) "1a3795d70ccd33e3facf9c5d221b1ac7")
(setf (get interfaces::Wheel :datatype-) "interfaces/Wheel")
(setf (get interfaces::Wheel :definition-)
      "string halo
")



(provide :interfaces/Wheel "1a3795d70ccd33e3facf9c5d221b1ac7")


