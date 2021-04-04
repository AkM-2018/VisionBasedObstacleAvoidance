;; Auto-generated. Do not edit!


(when (boundp 'marker_navigator::SetRatesYaw)
  (if (not (find-package "MARKER_NAVIGATOR"))
    (make-package "MARKER_NAVIGATOR"))
  (shadow 'SetRatesYaw (find-package "MARKER_NAVIGATOR")))
(unless (find-package "MARKER_NAVIGATOR::SETRATESYAW")
  (make-package "MARKER_NAVIGATOR::SETRATESYAW"))
(unless (find-package "MARKER_NAVIGATOR::SETRATESYAWREQUEST")
  (make-package "MARKER_NAVIGATOR::SETRATESYAWREQUEST"))
(unless (find-package "MARKER_NAVIGATOR::SETRATESYAWRESPONSE")
  (make-package "MARKER_NAVIGATOR::SETRATESYAWRESPONSE"))

(in-package "ROS")





(defclass marker_navigator::SetRatesYawRequest
  :super ros::object
  :slots (_pitch_rate _roll_rate _yaw _thrust _frame_id _update_frame ))

(defmethod marker_navigator::SetRatesYawRequest
  (:init
   (&key
    ((:pitch_rate __pitch_rate) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:yaw __yaw) 0.0)
    ((:thrust __thrust) 0.0)
    ((:frame_id __frame_id) "")
    ((:update_frame __update_frame) nil)
    )
   (send-super :init)
   (setq _pitch_rate (float __pitch_rate))
   (setq _roll_rate (float __roll_rate))
   (setq _yaw (float __yaw))
   (setq _thrust (float __thrust))
   (setq _frame_id (string __frame_id))
   (setq _update_frame __update_frame)
   self)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
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
    ;; float32 _pitch_rate
    4
    ;; float32 _roll_rate
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
     ;; float32 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(defclass marker_navigator::SetRatesYawResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marker_navigator::SetRatesYawResponse
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

(defclass marker_navigator::SetRatesYaw
  :super ros::object
  :slots ())

(setf (get marker_navigator::SetRatesYaw :md5sum-) "8e9ec92299c2414ab4a1798226c4bd30")
(setf (get marker_navigator::SetRatesYaw :datatype-) "marker_navigator/SetRatesYaw")
(setf (get marker_navigator::SetRatesYaw :request) marker_navigator::SetRatesYawRequest)
(setf (get marker_navigator::SetRatesYaw :response) marker_navigator::SetRatesYawResponse)

(defmethod marker_navigator::SetRatesYawRequest
  (:response () (instance marker_navigator::SetRatesYawResponse :init)))

(setf (get marker_navigator::SetRatesYawRequest :md5sum-) "8e9ec92299c2414ab4a1798226c4bd30")
(setf (get marker_navigator::SetRatesYawRequest :datatype-) "marker_navigator/SetRatesYawRequest")
(setf (get marker_navigator::SetRatesYawRequest :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw
float32 thrust
string frame_id
bool update_frame
---
bool success
string message

")

(setf (get marker_navigator::SetRatesYawResponse :md5sum-) "8e9ec92299c2414ab4a1798226c4bd30")
(setf (get marker_navigator::SetRatesYawResponse :datatype-) "marker_navigator/SetRatesYawResponse")
(setf (get marker_navigator::SetRatesYawResponse :definition-)
      "float32 pitch_rate
float32 roll_rate
float32 yaw
float32 thrust
string frame_id
bool update_frame
---
bool success
string message

")



(provide :marker_navigator/SetRatesYaw "8e9ec92299c2414ab4a1798226c4bd30")


