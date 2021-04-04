;; Auto-generated. Do not edit!


(when (boundp 'marker_navigator::SetRates)
  (if (not (find-package "MARKER_NAVIGATOR"))
    (make-package "MARKER_NAVIGATOR"))
  (shadow 'SetRates (find-package "MARKER_NAVIGATOR")))
(unless (find-package "MARKER_NAVIGATOR::SETRATES")
  (make-package "MARKER_NAVIGATOR::SETRATES"))
(unless (find-package "MARKER_NAVIGATOR::SETRATESREQUEST")
  (make-package "MARKER_NAVIGATOR::SETRATESREQUEST"))
(unless (find-package "MARKER_NAVIGATOR::SETRATESRESPONSE")
  (make-package "MARKER_NAVIGATOR::SETRATESRESPONSE"))

(in-package "ROS")





(defclass marker_navigator::SetRatesRequest
  :super ros::object
  :slots (_pitch_rate _roll_rate _yaw_rate _thrust ))

(defmethod marker_navigator::SetRatesRequest
  (:init
   (&key
    ((:pitch_rate __pitch_rate) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _pitch_rate (float __pitch_rate))
   (setq _roll_rate (float __roll_rate))
   (setq _yaw_rate (float __yaw_rate))
   (setq _thrust (float __thrust))
   self)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch_rate
    4
    ;; float32 _roll_rate
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
     ;; float32 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass marker_navigator::SetRatesResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_navigator::SetRatesResponse
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

(defclass marker_navigator::SetRates
  :super ros::object
  :slots ())

(setf (get marker_navigator::SetRates :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get marker_navigator::SetRates :datatype-) "marker_navigator/SetRates")
(setf (get marker_navigator::SetRates :request) marker_navigator::SetRatesRequest)
(setf (get marker_navigator::SetRates :response) marker_navigator::SetRatesResponse)

(defmethod marker_navigator::SetRatesRequest
  (:response () (instance marker_navigator::SetRatesResponse :init)))

(setf (get marker_navigator::SetRatesRequest :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get marker_navigator::SetRatesRequest :datatype-) "marker_navigator/SetRatesRequest")
(setf (get marker_navigator::SetRatesRequest :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw_rate
float32 thrust
---
bool success
string message

")

(setf (get marker_navigator::SetRatesResponse :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get marker_navigator::SetRatesResponse :datatype-) "marker_navigator/SetRatesResponse")
(setf (get marker_navigator::SetRatesResponse :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw_rate
float32 thrust
---
bool success
string message

")



(provide :marker_navigator/SetRates "a7c908a2d3c593969f07004c267ff517")


