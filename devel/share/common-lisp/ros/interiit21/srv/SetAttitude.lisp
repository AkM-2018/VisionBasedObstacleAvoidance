; Auto-generated. Do not edit!


(cl:in-package interiit21-srv)


;//! \htmlinclude SetAttitude-request.msg.html

(cl:defclass <SetAttitude-request> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
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

(cl:defclass SetAttitude-request (<SetAttitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAttitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAttitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetAttitude-request> is deprecated: use interiit21-srv:SetAttitude-request instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:pitch-val is deprecated.  Use interiit21-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:roll-val is deprecated.  Use interiit21-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:yaw-val is deprecated.  Use interiit21-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:thrust-val is deprecated.  Use interiit21-srv:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:frame_id-val is deprecated.  Use interiit21-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'update_frame-val :lambda-list '(m))
(cl:defmethod update_frame-val ((m <SetAttitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:update_frame-val is deprecated.  Use interiit21-srv:update_frame instead.")
  (update_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAttitude-request>) ostream)
  "Serializes a message object of type '<SetAttitude-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAttitude-request>) istream)
  "Deserializes a message object of type '<SetAttitude-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAttitude-request>)))
  "Returns string type for a service object of type '<SetAttitude-request>"
  "interiit21/SetAttitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitude-request)))
  "Returns string type for a service object of type 'SetAttitude-request"
  "interiit21/SetAttitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAttitude-request>)))
  "Returns md5sum for a message object of type '<SetAttitude-request>"
  "ea5e90e4318475285b6e38c8c4e25a8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAttitude-request)))
  "Returns md5sum for a message object of type 'SetAttitude-request"
  "ea5e90e4318475285b6e38c8c4e25a8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAttitude-request>)))
  "Returns full string definition for message of type '<SetAttitude-request>"
  (cl:format cl:nil "float32 pitch~%float32 roll~%float32 yaw~%float32 thrust~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAttitude-request)))
  "Returns full string definition for message of type 'SetAttitude-request"
  (cl:format cl:nil "float32 pitch~%float32 roll~%float32 yaw~%float32 thrust~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAttitude-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAttitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAttitude-request
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':update_frame (update_frame msg))
))
;//! \htmlinclude SetAttitude-response.msg.html

(cl:defclass <SetAttitude-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetAttitude-response (<SetAttitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAttitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAttitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetAttitude-response> is deprecated: use interiit21-srv:SetAttitude-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAttitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:success-val is deprecated.  Use interiit21-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAttitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:message-val is deprecated.  Use interiit21-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAttitude-response>) ostream)
  "Serializes a message object of type '<SetAttitude-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAttitude-response>) istream)
  "Deserializes a message object of type '<SetAttitude-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAttitude-response>)))
  "Returns string type for a service object of type '<SetAttitude-response>"
  "interiit21/SetAttitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitude-response)))
  "Returns string type for a service object of type 'SetAttitude-response"
  "interiit21/SetAttitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAttitude-response>)))
  "Returns md5sum for a message object of type '<SetAttitude-response>"
  "ea5e90e4318475285b6e38c8c4e25a8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAttitude-response)))
  "Returns md5sum for a message object of type 'SetAttitude-response"
  "ea5e90e4318475285b6e38c8c4e25a8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAttitude-response>)))
  "Returns full string definition for message of type '<SetAttitude-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAttitude-response)))
  "Returns full string definition for message of type 'SetAttitude-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAttitude-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAttitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAttitude-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAttitude)))
  'SetAttitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAttitude)))
  'SetAttitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitude)))
  "Returns string type for a service object of type '<SetAttitude>"
  "interiit21/SetAttitude")