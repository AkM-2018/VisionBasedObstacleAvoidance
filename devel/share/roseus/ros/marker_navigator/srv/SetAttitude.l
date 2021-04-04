;; Auto-generated. Do not edit!


(when (boundp 'marker_navigator::SetAttitude)
  (if (not (find-package "MARKER_NAVIGATOR"))
    (make-package "MARKER_NAVIGATOR"))
  (shadow 'SetAttitude (find-package "MARKER_NAVIGATOR")))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDE")
  (make-package "MARKER_NAVIGATOR::SETATTITUDE"))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDEREQUEST")
  (make-package "MARKER_NAVIGATOR::SETATTITUDEREQUEST"))
(unless (find-package "MARKER_NAVIGATOR::SETATTITUDERESPONSE")
  (make-package "MARKER_NAVIGATOR::SETATTITUDERESPONSE"))

(in-package "ROS")





(defclass marker_navigator::SetAttitudeRequest
  :super ros::object
  :slots (_pitch _roll _yaw _thrust _frame_id _update_frame ))

(defmethod marker_navigator::SetAttitudeRequest
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

(defclass marker_navigator::SetAttitudeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_navigator::SetAttitudeResponse
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

(defclass marker_navigator::SetAttitude
  :super ros::object
  :slots ())

(setf (get marker_navigator::SetAttitude :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get marker_navigator::SetAttitude :datatype-) "marker_navigator/SetAttitude")
(setf (get marker_navigator::SetAttitude :request) marker_navigator::SetAttitudeRequest)
(setf (get marker_navigator::SetAttitude :response) marker_navigator::SetAttitudeResponse)

(defmethod marker_navigator::SetAttitudeRequest
  (:response () (instance marker_navigator::SetAttitudeResponse :init)))

(setf (get marker_navigator::SetAttitudeRequest :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get marker_navigator::SetAttitudeRequest :datatype-) "marker_navigator/SetAttitudeRequest")
(setf (get marker_navigator::SetAttitudeRequest :definition-)
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

(setf (get marker_navigator::SetAttitudeResponse :md5sum-) "ea5e90e4318475285b6e38c8c4e25a8f")
(setf (get marker_navigator::SetAttitudeResponse :datatype-) "marker_navigator/SetAttitudeResponse")
(setf (get marker_navigator::SetAttitudeResponse :definition-)
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



(provide :marker_navigator/SetAttitude "ea5e90e4318475285b6e38c8c4e25a8f")


