;; Auto-generated. Do not edit!


(when (boundp 'marker_navigator::SetPositionYawRate)
  (if (not (find-package "MARKER_NAVIGATOR"))
    (make-package "MARKER_NAVIGATOR"))
  (shadow 'SetPositionYawRate (find-package "MARKER_NAVIGATOR")))
(unless (find-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATE")
  (make-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATE"))
(unless (find-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATEREQUEST")
  (make-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATEREQUEST"))
(unless (find-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATERESPONSE")
  (make-package "MARKER_NAVIGATOR::SETPOSITIONYAWRATERESPONSE"))

(in-package "ROS")





(defclass marker_navigator::SetPositionYawRateRequest
  :super ros::object
  :slots (_x _y _z _yaw_rate _frame_id _update_frame ))

(defmethod marker_navigator::SetPositionYawRateRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:frame_id __frame_id) "")
    ((:update_frame __update_frame) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw_rate (float __yaw_rate))
   (setq _frame_id (string __frame_id))
   (setq _update_frame __update_frame)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:update_frame
   (&optional __update_frame)
   (if __update_frame (setq _update_frame __update_frame)) _update_frame)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw_rate
    4
    ;; string _frame_id
    4 (length _frame_id)
    ;; bool _update_frame
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; bool _update_frame
       (if _update_frame (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _update_frame
     (setq _update_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass marker_navigator::SetPositionYawRateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_navigator::SetPositionYawRateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marker_navigator::SetPositionYawRate
  :super ros::object
  :slots ())

(setf (get marker_navigator::SetPositionYawRate :md5sum-) "63e77cdfe8f2694b3948c26357897f50")
(setf (get marker_navigator::SetPositionYawRate :datatype-) "marker_navigator/SetPositionYawRate")
(setf (get marker_navigator::SetPositionYawRate :request) marker_navigator::SetPositionYawRateRequest)
(setf (get marker_navigator::SetPositionYawRate :response) marker_navigator::SetPositionYawRateResponse)

(defmethod marker_navigator::SetPositionYawRateRequest
  (:response () (instance marker_navigator::SetPositionYawRateResponse :init)))

(setf (get marker_navigator::SetPositionYawRateRequest :md5sum-) "63e77cdfe8f2694b3948c26357897f50")
(setf (get marker_navigator::SetPositionYawRateRequest :datatype-) "marker_navigator/SetPositionYawRateRequest")
(setf (get marker_navigator::SetPositionYawRateRequest :definition-)
      "float32 x
float32 y
float32 z
float32 yaw_rate
string frame_id
bool update_frame
---
bool success
string message

")

(setf (get marker_navigator::SetPositionYawRateResponse :md5sum-) "63e77cdfe8f2694b3948c26357897f50")
(setf (get marker_navigator::SetPositionYawRateResponse :datatype-) "marker_navigator/SetPositionYawRateResponse")
(setf (get marker_navigator::SetPositionYawRateResponse :definition-)
      "float32 x
float32 y
float32 z
float32 yaw_rate
string frame_id
bool update_frame
---
bool success
string message

")



(provide :marker_navigator/SetPositionYawRate "63e77cdfe8f2694b3948c26357897f50")


