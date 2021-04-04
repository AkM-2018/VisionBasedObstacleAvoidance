;; Auto-generated. Do not edit!


(when (boundp 'interiit21::SetRates)
  (if (not (find-package "INTERIIT21"))
    (make-package "INTERIIT21"))
  (shadow 'SetRates (find-package "INTERIIT21")))
(unless (find-package "INTERIIT21::SETRATES")
  (make-package "INTERIIT21::SETRATES"))
(unless (find-package "INTERIIT21::SETRATESREQUEST")
  (make-package "INTERIIT21::SETRATESREQUEST"))
(unless (find-package "INTERIIT21::SETRATESRESPONSE")
  (make-package "INTERIIT21::SETRATESRESPONSE"))

(in-package "ROS")





(defclass interiit21::SetRatesRequest
  :super ros::object
  :slots (_pitch_rate _roll_rate _yaw_rate _thrust ))

(defmethod interiit21::SetRatesRequest
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

(defclass interiit21::SetRatesResponse
  :super ros::object
  :slots (_success _message ))

(defmethod interiit21::SetRatesResponse
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

(defclass interiit21::SetRates
  :super ros::object
  :slots ())

(setf (get interiit21::SetRates :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get interiit21::SetRates :datatype-) "interiit21/SetRates")
(setf (get interiit21::SetRates :request) interiit21::SetRatesRequest)
(setf (get interiit21::SetRates :response) interiit21::SetRatesResponse)

(defmethod interiit21::SetRatesRequest
  (:response () (instance interiit21::SetRatesResponse :init)))

(setf (get interiit21::SetRatesRequest :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get interiit21::SetRatesRequest :datatype-) "interiit21/SetRatesRequest")
(setf (get interiit21::SetRatesRequest :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw_rate
float32 thrust
---
bool success
string message

")

(setf (get interiit21::SetRatesResponse :md5sum-) "a7c908a2d3c593969f07004c267ff517")
(setf (get interiit21::SetRatesResponse :datatype-) "interiit21/SetRatesResponse")
(setf (get interiit21::SetRatesResponse :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw_rate
float32 thrust
---
bool success
string message

")



(provide :interiit21/SetRates "a7c908a2d3c593969f07004c267ff517")


