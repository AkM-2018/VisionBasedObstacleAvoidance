;; Auto-generated. Do not edit!


(when (boundp 'interiit21::SetVelocityYawRate)
  (if (not (find-package "INTERIIT21"))
    (make-package "INTERIIT21"))
  (shadow 'SetVelocityYawRate (find-package "INTERIIT21")))
(unless (find-package "INTERIIT21::SETVELOCITYYAWRATE")
  (make-package "INTERIIT21::SETVELOCITYYAWRATE"))
(unless (find-package "INTERIIT21::SETVELOCITYYAWRATEREQUEST")
  (make-package "INTERIIT21::SETVELOCITYYAWRATEREQUEST"))
(unless (find-package "INTERIIT21::SETVELOCITYYAWRATERESPONSE")
  (make-package "INTERIIT21::SETVELOCITYYAWRATERESPONSE"))

(in-package "ROS")





(defclass interiit21::SetVelocityYawRateRequest
  :super ros::object
  :slots (_vx _vy _vz _yaw_rate _frame_id _update_frame ))

(defmethod interiit21::SetVelocityYawRateRequest
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:frame_id __frame_id) "")
    ((:update_frame __update_frame) nil)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _yaw_rate (float __yaw_rate))
   (setq _frame_id (string __frame_id))
   (setq _update_frame __update_frame)
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
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
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
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
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _update_frame
     (setq _update_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass interiit21::SetVelocityYawRateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod interiit21::SetVelocityYawRateResponse
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

(defclass interiit21::SetVelocityYawRate
  :super ros::object
  :slots ())

(setf (get interiit21::SetVelocityYawRate :md5sum-) "d3735930254b75ba322bcc1e0750d89d")
(setf (get interiit21::SetVelocityYawRate :datatype-) "interiit21/SetVelocityYawRate")
(setf (get interiit21::SetVelocityYawRate :request) interiit21::SetVelocityYawRateRequest)
(setf (get interiit21::SetVelocityYawRate :response) interiit21::SetVelocityYawRateResponse)

(defmethod interiit21::SetVelocityYawRateRequest
  (:response () (instance interiit21::SetVelocityYawRateResponse :init)))

(setf (get interiit21::SetVelocityYawRateRequest :md5sum-) "d3735930254b75ba322bcc1e0750d89d")
(setf (get interiit21::SetVelocityYawRateRequest :datatype-) "interiit21/SetVelocityYawRateRequest")
(setf (get interiit21::SetVelocityYawRateRequest :definition-)
      "float32 vx
float32 vy
float32 vz
float32 yaw_rate
string frame_id
bool update_frame
---
bool success
string message

")

(setf (get interiit21::SetVelocityYawRateResponse :md5sum-) "d3735930254b75ba322bcc1e0750d89d")
(setf (get interiit21::SetVelocityYawRateResponse :datatype-) "interiit21/SetVelocityYawRateResponse")
(setf (get interiit21::SetVelocityYawRateResponse :definition-)
      "float32 vx
float32 vy
float32 vz
float32 yaw_rate
string frame_id
bool update_frame
---
bool success
string message

")



(provide :interiit21/SetVelocityYawRate "d3735930254b75ba322bcc1e0750d89d")

