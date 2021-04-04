;; Auto-generated. Do not edit!


(when (boundp 'marker_navigator::SetAttitudeYawRate)
  (if (not (find-package "MARKER_NAVIGATOR"))
    (make-package "MARKER_NAVIGATOR"))
  (shadow 'SetAttitudeYawRate (find-package "MARKER_NAVIGATOR")))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATE")
  (make-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATE"))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATEREQUEST")
  (make-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATEREQUEST"))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATERESPONSE")
  (make-package "MARKER_NAVIGATOR::SETATTITUDEYAWRATERESPONSE"))

(in-package "ROS")





(defclass marker_navigator::SetAttitudeYawRateRequest
  :super ros::object
  :slots (_roll _pitch _yaw_rate _thrust ))

(defmethod marker_navigator::SetAttitudeYawRateRequest
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw_rate (float __yaw_rate))
   (setq _thrust (float __thrust))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw_rate
    4
    ;; float32 _thrust
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass marker_navigator::SetAttitudeYawRateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_navigator::SetAttitudeYawRateResponse
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

(defclass marker_navigator::SetAttitudeYawRate
  :super ros::object
  :slots ())

(setf (get marker_navigator::SetAttitudeYawRate :md5sum-) "a7d4321b4c1a6039ca301d0bd0fb422f")
(setf (get marker_navigator::SetAttitudeYawRate :datatype-) "marker_navigator/SetAttitudeYawRate")
(setf (get marker_navigator::SetAttitudeYawRate :request) marker_navigator::SetAttitudeYawRateRequest)
(setf (get marker_navigator::SetAttitudeYawRate :response) marker_navigator::SetAttitudeYawRateResponse)

(defmethod marker_navigator::SetAttitudeYawRateRequest
  (:response () (instance marker_navigator::SetAttitudeYawRateResponse :init)))

(setf (get marker_navigator::SetAttitudeYawRateRequest :md5sum-) "a7d4321b4c1a6039ca301d0bd0fb422f")
(setf (get marker_navigator::SetAttitudeYawRateRequest :datatype-) "marker_navigator/SetAttitudeYawRateRequest")
(setf (get marker_navigator::SetAttitudeYawRateRequest :definition-)
      "float32 roll
float32 pitch
float32 yaw_rate
float32 thrust
---
bool success
string message

")

(setf (get marker_navigator::SetAttitudeYawRateResponse :md5sum-) "a7d4321b4c1a6039ca301d0bd0fb422f")
(setf (get marker_navigator::SetAttitudeYawRateResponse :datatype-) "marker_navigator/SetAttitudeYawRateResponse")
(setf (get marker_navigator::SetAttitudeYawRateResponse :definition-)
      "float32 roll
float32 pitch
float32 yaw_rate
float32 thrust
---
bool success
string message

")



(provide :marker_navigator/SetAttitudeYawRate "a7d4321b4c1a6039ca301d0bd0fb422f")


