;; Auto-generated. Do not edit!


(when (boundp 'interiit21::SetAttitude)
  (if (not (find-package "INTERIIT21"))
    (make-package "INTERIIT21"))
  (shadow 'SetAttitude (find-package "INTERIIT21")))
(unless (find-package "INTERIIT21::SETATTITUDE")
  (make-package "INTERIIT21::SETATTITUDE"))
(unless (find-package "INTERIIT21::SETATTITUDEREQUEST")
  (make-package "INTERIIT21::SETATTITUDEREQUEST"))
(unless (find-package "INTERIIT21::SETATTITUDERESPONSE")
  (make-package "INTERIIT21::SETATTITUDERESPONSE"))

(in-package "ROS")





(defclass interiit21::SetAttitudeRequest
  :super ros::object
  :slots (_pitch _roll _yaw _thrust _frame_id _update_frame ))

(defmethod interiit21::SetAttitudeRequest
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:yaw __yaw) 0.0)
    ((:thrust __thrust) 0.0)
    ((:frame_id __frame_id) "")
    ((:update_frame __update_frame) nil)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _yaw (float __yaw))
   (setq _thrust (float __thrust))
   (setq _frame_id (string __frame_id))
   (setq _update_frame __update_frame)
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:update_frame
   (&optional __update_frame)
   (if __update_frame (setq _update_frame __update_frame)) _update_frame)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _yaw
    4
    ;; float32 _thrust
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
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; bool _update_frame
       (if _update_frame (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _update_frame
     (setq _update_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass interiit21::SetAttitudeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod interiit21::SetAttitudeResponse
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

(defclass interiit21::SetAttitude
  :super ros::object
  :slots ())

(setf (get interiit21::SetAttitude :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get interiit21::SetAttitude :datatype-) "interiit21/SetAttitude")
(setf (get interiit21::SetAttitude :request) interiit21::SetAttitudeRequest)
(setf (get interiit21::SetAttitude :response) interiit21::SetAttitudeResponse)

(defmethod interiit21::SetAttitudeRequest
  (:response () (instance interiit21::SetAttitudeResponse :init)))

(setf (get interiit21::SetAttitudeRequest :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get interiit21::SetAttitudeRequest :datatype-) "interiit21/SetAttitudeRequest")
(setf (get interiit21::SetAttitudeRequest :definition-)
      "float32 pitch
float32 roll
float32 yaw
float32 thrust
string frame_id
bool update_frame
---
bool success
string message

")

(setf (get interiit21::SetAttitudeResponse :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get interiit21::SetAttitudeResponse :datatype-) "interiit21/SetAttitudeResponse")
(setf (get interiit21::SetAttitudeResponse :definition-)
      "float32 pitch
float32 roll
float32 yaw
float32 thrust
string frame_id
bool update_frame
---
bool success
string message

")



(provide :interiit21/SetAttitude "ea5e90e4318475285b6e38c8c4e25a8f")


