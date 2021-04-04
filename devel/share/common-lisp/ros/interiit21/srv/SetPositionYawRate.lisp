; Auto-generated. Do not edit!


(cl:in-package interiit21-srv)


;//! \htmlinclude SetPositionYawRate-request.msg.html

(cl:defclass <SetPositionYawRate-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
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

(cl:defclass SetPositionYawRate-request (<SetPositionYawRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPositionYawRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPositionYawRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetPositionYawRate-request> is deprecated: use interiit21-srv:SetPositionYawRate-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:x-val is deprecated.  Use interiit21-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:y-val is deprecated.  Use interiit21-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:z-val is deprecated.  Use interiit21-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:yaw_rate-val is deprecated.  Use interiit21-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:frame_id-val is deprecated.  Use interiit21-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'update_frame-val :lambda-list '(m))
(cl:defmethod update_frame-val ((m <SetPositionYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:update_frame-val is deprecated.  Use interiit21-srv:update_frame instead.")
  (update_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPositionYawRate-request>) ostream)
  "Serializes a message object of type '<SetPositionYawRate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPositionYawRate-request>) istream)
  "Deserializes a message object of type '<SetPositionYawRate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPositionYawRate-request>)))
  "Returns string type for a service object of type '<SetPositionYawRate-request>"
  "interiit21/SetPositionYawRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositionYawRate-request)))
  "Returns string type for a service object of type 'SetPositionYawRate-request"
  "interiit21/SetPositionYawRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPositionYawRate-request>)))
  "Returns md5sum for a message object of type '<SetPositionYawRate-request>"
  "63e77cdfe8f2694b3948c26357897f50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPositionYawRate-request)))
  "Returns md5sum for a message object of type 'SetPositionYawRate-request"
  "63e77cdfe8f2694b3948c26357897f50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPositionYawRate-request>)))
  "Returns full string definition for message of type '<SetPositionYawRate-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 yaw_rate~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPositionYawRate-request)))
  "Returns full string definition for message of type 'SetPositionYawRate-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%float32 yaw_rate~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPositionYawRate-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPositionYawRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPositionYawRate-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':update_frame (update_frame msg))
))
;//! \htmlinclude SetPositionYawRate-response.msg.html

(cl:defclass <SetPositionYawRate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPositionYawRate-response (<SetPositionYawRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPositionYawRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPositionYawRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetPositionYawRate-response> is deprecated: use interiit21-srv:SetPositionYawRate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPositionYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:success-val is deprecated.  Use interiit21-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPositionYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:message-val is deprecated.  Use interiit21-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPositionYawRate-response>) ostream)
  "Serializes a message object of type '<SetPositionYawRate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPositionYawRate-response>) istream)
  "Deserializes a message object of type '<SetPositionYawRate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPositionYawRate-response>)))
  "Returns string type for a service object of type '<SetPositionYawRate-response>"
  "interiit21/SetPositionYawRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositionYawRate-response)))
  "Returns string type for a service object of type 'SetPositionYawRate-response"
  "interiit21/SetPositionYawRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPositionYawRate-response>)))
  "Returns md5sum for a message object of type '<SetPositionYawRate-response>"
  "63e77cdfe8f2694b3948c26357897f50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPositionYawRate-response)))
  "Returns md5sum for a message object of type 'SetPositionYawRate-response"
  "63e77cdfe8f2694b3948c26357897f50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPositionYawRate-response>)))
  "Returns full string definition for message of type '<SetPositionYawRate-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPositionYawRate-response)))
  "Returns full string definition for message of type 'SetPositionYawRate-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPositionYawRate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPositionYawRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPositionYawRate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPositionYawRate)))
  'SetPositionYawRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPositionYawRate)))
  'SetPositionYawRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPositionYawRate)))
  "Returns string type for a service object of type '<SetPositionYawRate>"
  "interiit21/SetPositionYawRate")