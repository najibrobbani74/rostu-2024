;; Auto-generated. Do not edit!


(when (boundp 'rostu_interfaces::BallPositionBasedOnCamera)
  (if (not (find-package "ROSTU_INTERFACES"))
    (make-package "ROSTU_INTERFACES"))
  (shadow 'BallPositionBasedOnCamera (find-package "ROSTU_INTERFACES")))
(unless (find-package "ROSTU_INTERFACES::BALLPOSITIONBASEDONCAMERA")
  (make-package "ROSTU_INTERFACES::BALLPOSITIONBASEDONCAMERA"))

(in-package "ROS")
;;//! \htmlinclude BallPositionBasedOnCamera.msg.html


(defclass rostu_interfaces::BallPositionBasedOnCamera
  :super ros::object
  :slots (_distance _angle _x_on_camera _y_on_camera _x_real _y_real ))

(defmethod rostu_interfaces::BallPositionBasedOnCamera
  (:init
   (&key
    ((:distance __distance) 0)
    ((:angle __angle) 0)
    ((:x_on_camera __x_on_camera) 0)
    ((:y_on_camera __y_on_camera) 0)
    ((:x_real __x_real) 0)
    ((:y_real __y_real) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   (setq _angle (round __angle))
   (setq _x_on_camera (round __x_on_camera))
   (setq _y_on_camera (round __y_on_camera))
   (setq _x_real (round __x_real))
   (setq _y_real (round __y_real))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:x_on_camera
   (&optional __x_on_camera)
   (if __x_on_camera (setq _x_on_camera __x_on_camera)) _x_on_camera)
  (:y_on_camera
   (&optional __y_on_camera)
   (if __y_on_camera (setq _y_on_camera __y_on_camera)) _y_on_camera)
  (:x_real
   (&optional __x_real)
   (if __x_real (setq _x_real __x_real)) _x_real)
  (:y_real
   (&optional __y_real)
   (if __y_real (setq _y_real __y_real)) _y_real)
  (:serialization-length
   ()
   (+
    ;; int64 _distance
    8
    ;; int64 _angle
    8
    ;; int64 _x_on_camera
    8
    ;; int64 _y_on_camera
    8
    ;; int64 _x_real
    8
    ;; int64 _y_real
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _distance (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _distance) (= (length (_distance . bv)) 2)) ;; bignum
              (write-long (ash (elt (_distance . bv) 0) 0) s)
              (write-long (ash (elt (_distance . bv) 1) -1) s))
             ((and (class _distance) (= (length (_distance . bv)) 1)) ;; big1
              (write-long (elt (_distance . bv) 0) s)
              (write-long (if (>= _distance 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _distance s)(write-long (if (>= _distance 0) 0 #xffffffff) s)))
     ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _angle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _angle) (= (length (_angle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_angle . bv) 0) 0) s)
              (write-long (ash (elt (_angle . bv) 1) -1) s))
             ((and (class _angle) (= (length (_angle . bv)) 1)) ;; big1
              (write-long (elt (_angle . bv) 0) s)
              (write-long (if (>= _angle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _angle s)(write-long (if (>= _angle 0) 0 #xffffffff) s)))
     ;; int64 _x_on_camera
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x_on_camera (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x_on_camera) (= (length (_x_on_camera . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x_on_camera . bv) 0) 0) s)
              (write-long (ash (elt (_x_on_camera . bv) 1) -1) s))
             ((and (class _x_on_camera) (= (length (_x_on_camera . bv)) 1)) ;; big1
              (write-long (elt (_x_on_camera . bv) 0) s)
              (write-long (if (>= _x_on_camera 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x_on_camera s)(write-long (if (>= _x_on_camera 0) 0 #xffffffff) s)))
     ;; int64 _y_on_camera
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y_on_camera (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y_on_camera) (= (length (_y_on_camera . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y_on_camera . bv) 0) 0) s)
              (write-long (ash (elt (_y_on_camera . bv) 1) -1) s))
             ((and (class _y_on_camera) (= (length (_y_on_camera . bv)) 1)) ;; big1
              (write-long (elt (_y_on_camera . bv) 0) s)
              (write-long (if (>= _y_on_camera 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y_on_camera s)(write-long (if (>= _y_on_camera 0) 0 #xffffffff) s)))
     ;; int64 _x_real
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x_real (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x_real) (= (length (_x_real . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x_real . bv) 0) 0) s)
              (write-long (ash (elt (_x_real . bv) 1) -1) s))
             ((and (class _x_real) (= (length (_x_real . bv)) 1)) ;; big1
              (write-long (elt (_x_real . bv) 0) s)
              (write-long (if (>= _x_real 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x_real s)(write-long (if (>= _x_real 0) 0 #xffffffff) s)))
     ;; int64 _y_real
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y_real (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y_real) (= (length (_y_real . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y_real . bv) 0) 0) s)
              (write-long (ash (elt (_y_real . bv) 1) -1) s))
             ((and (class _y_real) (= (length (_y_real . bv)) 1)) ;; big1
              (write-long (elt (_y_real . bv) 0) s)
              (write-long (if (>= _y_real 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y_real s)(write-long (if (>= _y_real 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _distance
#+(or :alpha :irix6 :x86_64)
      (setf _distance (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _distance (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
      (setf _angle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _angle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _x_on_camera
#+(or :alpha :irix6 :x86_64)
      (setf _x_on_camera (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x_on_camera (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y_on_camera
#+(or :alpha :irix6 :x86_64)
      (setf _y_on_camera (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y_on_camera (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _x_real
#+(or :alpha :irix6 :x86_64)
      (setf _x_real (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x_real (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y_real
#+(or :alpha :irix6 :x86_64)
      (setf _y_real (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y_real (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get rostu_interfaces::BallPositionBasedOnCamera :md5sum-) "c32d588a00265202dbcab5311745340d")
(setf (get rostu_interfaces::BallPositionBasedOnCamera :datatype-) "rostu_interfaces/BallPositionBasedOnCamera")
(setf (get rostu_interfaces::BallPositionBasedOnCamera :definition-)
      "int64 distance
int64 angle
int64 x_on_camera
int64 y_on_camera
int64 x_real
int64 y_real
")



(provide :rostu_interfaces/BallPositionBasedOnCamera "c32d588a00265202dbcab5311745340d")


