; Auto-generated. Do not edit!


(cl:in-package interiit21-srv)


;//! \htmlinclude SetAttitudeYawRate-request.msg.html

(cl:defclass <SetAttitudeYawRate-request> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAttitudeYawRate-request (<SetAttitudeYawRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAttitudeYawRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAttitudeYawRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetAttitudeYawRate-request> is deprecated: use interiit21-srv:SetAttitudeYawRate-request instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <SetAttitudeYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:roll-val is deprecated.  Use interiit21-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <SetAttitudeYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:pitch-val is deprecated.  Use interiit21-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <SetAttitudeYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:yaw_rate-val is deprecated.  Use interiit21-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <SetAttitudeYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:thrust-val is deprecated.  Use interiit21-srv:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAttitudeYawRate-request>) ostream)
  "Serializes a message object of type '<SetAttitudeYawRate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAttitudeYawRate-request>) istream)
  "Deserializes a message object of type '<SetAttitudeYawRate-request>"
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
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAttitudeYawRate-request>)))
  "Returns string type for a service object of type '<SetAttitudeYawRate-request>"
  "interiit21/SetAttitudeYawRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitudeYawRate-request)))
  "Returns string type for a service object of type 'SetAttitudeYawRate-request"
  "interiit21/SetAttitudeYawRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAttitudeYawRate-request>)))
  "Returns md5sum for a message object of type '<SetAttitudeYawRate-request>"
  "a7d4321b4c1a6039ca301d0bd0fb422f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAttitudeYawRate-request)))
  "Returns md5sum for a message object of type 'SetAttitudeYawRate-request"
  "a7d4321b4c1a6039ca301d0bd0fb422f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAttitudeYawRate-request>)))
  "Returns full string definition for message of type '<SetAttitudeYawRate-request>"
  (cl:format cl:nil "float32 roll~%float32 pitch~%float32 yaw_rate~%float32 thrust~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAttitudeYawRate-request)))
  "Returns full string definition for message of type 'SetAttitudeYawRate-request"
  (cl:format cl:nil "float32 roll~%float32 pitch~%float32 yaw_rate~%float32 thrust~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAttitudeYawRate-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAttitudeYawRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAttitudeYawRate-request
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':thrust (thrust msg))
))
;//! \htmlinclude SetAttitudeYawRate-response.msg.html

(cl:defclass <SetAttitudeYawRate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetAttitudeYawRate-response (<SetAttitudeYawRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAttitudeYawRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAttitudeYawRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetAttitudeYawRate-response> is deprecated: use interiit21-srv:SetAttitudeYawRate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAttitudeYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:success-val is deprecated.  Use interiit21-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAttitudeYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:message-val is deprecated.  Use interiit21-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAttitudeYawRate-response>) ostream)
  "Serializes a message object of type '<SetAttitudeYawRate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAttitudeYawRate-response>) istream)
  "Deserializes a message object of type '<SetAttitudeYawRate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAttitudeYawRate-response>)))
  "Returns string type for a service object of type '<SetAttitudeYawRate-response>"
  "interiit21/SetAttitudeYawRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitudeYawRate-response)))
  "Returns string type for a service object of type 'SetAttitudeYawRate-response"
  "interiit21/SetAttitudeYawRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAttitudeYawRate-response>)))
  "Returns md5sum for a message object of type '<SetAttitudeYawRate-response>"
  "a7d4321b4c1a6039ca301d0bd0fb422f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAttitudeYawRate-response)))
  "Returns md5sum for a message object of type 'SetAttitudeYawRate-response"
  "a7d4321b4c1a6039ca301d0bd0fb422f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAttitudeYawRate-response>)))
  "Returns full string definition for message of type '<SetAttitudeYawRate-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAttitudeYawRate-response)))
  "Returns full string definition for message of type 'SetAttitudeYawRate-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAttitudeYawRate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAttitudeYawRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAttitudeYawRate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAttitudeYawRate)))
  'SetAttitudeYawRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAttitudeYawRate)))
  'SetAttitudeYawRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAttitudeYawRate)))
  "Returns string type for a service object of type '<SetAttitudeYawRate>"
  "interiit21/SetAttitudeYawRate")