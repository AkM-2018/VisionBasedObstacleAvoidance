; Auto-generated. Do not edit!


(cl:in-package interiit21-srv)


;//! \htmlinclude SetRatesYaw-request.msg.html

(cl:defclass <SetRatesYaw-request> (roslisp-msg-protocol:ros-message)
  ((pitch_rate
    :reader pitch_rate
    :initarg :pitch_rate
    :type cl:float
    :initform 0.0)
   (roll_rate
    :reader roll_rate
    :initarg :roll_rate
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (update_frame
    :reader update_frame
    :initarg :update_frame
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRatesYaw-request (<SetRatesYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRatesYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRatesYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetRatesYaw-request> is deprecated: use interiit21-srv:SetRatesYaw-request instead.")))

(cl:ensure-generic-function 'pitch_rate-val :lambda-list '(m))
(cl:defmethod pitch_rate-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:pitch_rate-val is deprecated.  Use interiit21-srv:pitch_rate instead.")
  (pitch_rate m))

(cl:ensure-generic-function 'roll_rate-val :lambda-list '(m))
(cl:defmethod roll_rate-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:roll_rate-val is deprecated.  Use interiit21-srv:roll_rate instead.")
  (roll_rate m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:yaw-val is deprecated.  Use interiit21-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:thrust-val is deprecated.  Use interiit21-srv:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:frame_id-val is deprecated.  Use interiit21-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'update_frame-val :lambda-list '(m))
(cl:defmethod update_frame-val ((m <SetRatesYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:update_frame-val is deprecated.  Use interiit21-srv:update_frame instead.")
  (update_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRatesYaw-request>) ostream)
  "Serializes a message object of type '<SetRatesYaw-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'update_frame) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRatesYaw-request>) istream)
  "Deserializes a message object of type '<SetRatesYaw-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'update_frame) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRatesYaw-request>)))
  "Returns string type for a service object of type '<SetRatesYaw-request>"
  "interiit21/SetRatesYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRatesYaw-request)))
  "Returns string type for a service object of type 'SetRatesYaw-request"
  "interiit21/SetRatesYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRatesYaw-request>)))
  "Returns md5sum for a message object of type '<SetRatesYaw-request>"
  "8e9ec92299c2414ab4a1798226c4bd30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRatesYaw-request)))
  "Returns md5sum for a message object of type 'SetRatesYaw-request"
  "8e9ec92299c2414ab4a1798226c4bd30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRatesYaw-request>)))
  "Returns full string definition for message of type '<SetRatesYaw-request>"
  (cl:format cl:nil "float32 pitch_rate~%float32 roll_rate~%float32 yaw~%float32 thrust~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRatesYaw-request)))
  "Returns full string definition for message of type 'SetRatesYaw-request"
  (cl:format cl:nil "float32 pitch_rate~%float32 roll_rate~%float32 yaw~%float32 thrust~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRatesYaw-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRatesYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRatesYaw-request
    (cl:cons ':pitch_rate (pitch_rate msg))
    (cl:cons ':roll_rate (roll_rate msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':update_frame (update_frame msg))
))
;//! \htmlinclude SetRatesYaw-response.msg.html

(cl:defclass <SetRatesYaw-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetRatesYaw-response (<SetRatesYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRatesYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRatesYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetRatesYaw-response> is deprecated: use interiit21-srv:SetRatesYaw-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetRatesYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:success-val is deprecated.  Use interiit21-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetRatesYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:message-val is deprecated.  Use interiit21-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRatesYaw-response>) ostream)
  "Serializes a message object of type '<SetRatesYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRatesYaw-response>) istream)
  "Deserializes a message object of type '<SetRatesYaw-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRatesYaw-response>)))
  "Returns string type for a service object of type '<SetRatesYaw-response>"
  "interiit21/SetRatesYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRatesYaw-response)))
  "Returns string type for a service object of type 'SetRatesYaw-response"
  "interiit21/SetRatesYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRatesYaw-response>)))
  "Returns md5sum for a message object of type '<SetRatesYaw-response>"
  "8e9ec92299c2414ab4a1798226c4bd30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRatesYaw-response)))
  "Returns md5sum for a message object of type 'SetRatesYaw-response"
  "8e9ec92299c2414ab4a1798226c4bd30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRatesYaw-response>)))
  "Returns full string definition for message of type '<SetRatesYaw-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRatesYaw-response)))
  "Returns full string definition for message of type 'SetRatesYaw-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRatesYaw-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRatesYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRatesYaw-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRatesYaw)))
  'SetRatesYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRatesYaw)))
  'SetRatesYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRatesYaw)))
  "Returns string type for a service object of type '<SetRatesYaw>"
  "interiit21/SetRatesYaw")