; Auto-generated. Do not edit!


(cl:in-package marker_navigator-srv)


;//! \htmlinclude SetVelocityYawRate-request.msg.html

(cl:defclass <SetVelocityYawRate-request> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
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

(cl:defclass SetVelocityYawRate-request (<SetVelocityYawRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVelocityYawRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVelocityYawRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_navigator-srv:<SetVelocityYawRate-request> is deprecated: use marker_navigator-srv:SetVelocityYawRate-request instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:vx-val is deprecated.  Use marker_navigator-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:vy-val is deprecated.  Use marker_navigator-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:vz-val is deprecated.  Use marker_navigator-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:yaw_rate-val is deprecated.  Use marker_navigator-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:frame_id-val is deprecated.  Use marker_navigator-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'update_frame-val :lambda-list '(m))
(cl:defmethod update_frame-val ((m <SetVelocityYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:update_frame-val is deprecated.  Use marker_navigator-srv:update_frame instead.")
  (update_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVelocityYawRate-request>) ostream)
  "Serializes a message object of type '<SetVelocityYawRate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVelocityYawRate-request>) istream)
  "Deserializes a message object of type '<SetVelocityYawRate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVelocityYawRate-request>)))
  "Returns string type for a service object of type '<SetVelocityYawRate-request>"
  "marker_navigator/SetVelocityYawRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocityYawRate-request)))
  "Returns string type for a service object of type 'SetVelocityYawRate-request"
  "marker_navigator/SetVelocityYawRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVelocityYawRate-request>)))
  "Returns md5sum for a message object of type '<SetVelocityYawRate-request>"
  "d3735930254b75ba322bcc1e0750d89d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVelocityYawRate-request)))
  "Returns md5sum for a message object of type 'SetVelocityYawRate-request"
  "d3735930254b75ba322bcc1e0750d89d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVelocityYawRate-request>)))
  "Returns full string definition for message of type '<SetVelocityYawRate-request>"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vz~%float32 yaw_rate~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVelocityYawRate-request)))
  "Returns full string definition for message of type 'SetVelocityYawRate-request"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vz~%float32 yaw_rate~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVelocityYawRate-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVelocityYawRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVelocityYawRate-request
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':update_frame (update_frame msg))
))
;//! \htmlinclude SetVelocityYawRate-response.msg.html

(cl:defclass <SetVelocityYawRate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetVelocityYawRate-response (<SetVelocityYawRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVelocityYawRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVelocityYawRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_navigator-srv:<SetVelocityYawRate-response> is deprecated: use marker_navigator-srv:SetVelocityYawRate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetVelocityYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:success-val is deprecated.  Use marker_navigator-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetVelocityYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_navigator-srv:message-val is deprecated.  Use marker_navigator-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVelocityYawRate-response>) ostream)
  "Serializes a message object of type '<SetVelocityYawRate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVelocityYawRate-response>) istream)
  "Deserializes a message object of type '<SetVelocityYawRate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVelocityYawRate-response>)))
  "Returns string type for a service object of type '<SetVelocityYawRate-response>"
  "marker_navigator/SetVelocityYawRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocityYawRate-response)))
  "Returns string type for a service object of type 'SetVelocityYawRate-response"
  "marker_navigator/SetVelocityYawRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVelocityYawRate-response>)))
  "Returns md5sum for a message object of type '<SetVelocityYawRate-response>"
  "d3735930254b75ba322bcc1e0750d89d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVelocityYawRate-response)))
  "Returns md5sum for a message object of type 'SetVelocityYawRate-response"
  "d3735930254b75ba322bcc1e0750d89d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVelocityYawRate-response>)))
  "Returns full string definition for message of type '<SetVelocityYawRate-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVelocityYawRate-response)))
  "Returns full string definition for message of type 'SetVelocityYawRate-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVelocityYawRate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVelocityYawRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVelocityYawRate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetVelocityYawRate)))
  'SetVelocityYawRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetVelocityYawRate)))
  'SetVelocityYawRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocityYawRate)))
  "Returns string type for a service object of type '<SetVelocityYawRate>"
  "marker_navigator/SetVelocityYawRate")