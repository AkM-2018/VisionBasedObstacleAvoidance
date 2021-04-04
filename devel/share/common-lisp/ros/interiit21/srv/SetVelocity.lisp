; Auto-generated. Do not edit!


(cl:in-package interiit21-srv)


;//! \htmlinclude SetVelocity-request.msg.html

(cl:defclass <SetVelocity-request> (roslisp-msg-protocol:ros-message)
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
   (yaw
    :reader yaw
    :initarg :yaw
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

(cl:defclass SetVelocity-request (<SetVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetVelocity-request> is deprecated: use interiit21-srv:SetVelocity-request instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:vx-val is deprecated.  Use interiit21-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:vy-val is deprecated.  Use interiit21-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:vz-val is deprecated.  Use interiit21-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:yaw-val is deprecated.  Use interiit21-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:frame_id-val is deprecated.  Use interiit21-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'update_frame-val :lambda-list '(m))
(cl:defmethod update_frame-val ((m <SetVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:update_frame-val is deprecated.  Use interiit21-srv:update_frame instead.")
  (update_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVelocity-request>) ostream)
  "Serializes a message object of type '<SetVelocity-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVelocity-request>) istream)
  "Deserializes a message object of type '<SetVelocity-request>"
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
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVelocity-request>)))
  "Returns string type for a service object of type '<SetVelocity-request>"
  "interiit21/SetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocity-request)))
  "Returns string type for a service object of type 'SetVelocity-request"
  "interiit21/SetVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVelocity-request>)))
  "Returns md5sum for a message object of type '<SetVelocity-request>"
  "ea087cf108d7c37634cddd53597622ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVelocity-request)))
  "Returns md5sum for a message object of type 'SetVelocity-request"
  "ea087cf108d7c37634cddd53597622ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVelocity-request>)))
  "Returns full string definition for message of type '<SetVelocity-request>"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vz~%float32 yaw~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVelocity-request)))
  "Returns full string definition for message of type 'SetVelocity-request"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 vz~%float32 yaw~%string frame_id~%bool update_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVelocity-request>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVelocity-request
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':update_frame (update_frame msg))
))
;//! \htmlinclude SetVelocity-response.msg.html

(cl:defclass <SetVelocity-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetVelocity-response (<SetVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interiit21-srv:<SetVelocity-response> is deprecated: use interiit21-srv:SetVelocity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:success-val is deprecated.  Use interiit21-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interiit21-srv:message-val is deprecated.  Use interiit21-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVelocity-response>) ostream)
  "Serializes a message object of type '<SetVelocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVelocity-response>) istream)
  "Deserializes a message object of type '<SetVelocity-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVelocity-response>)))
  "Returns string type for a service object of type '<SetVelocity-response>"
  "interiit21/SetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocity-response)))
  "Returns string type for a service object of type 'SetVelocity-response"
  "interiit21/SetVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVelocity-response>)))
  "Returns md5sum for a message object of type '<SetVelocity-response>"
  "ea087cf108d7c37634cddd53597622ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVelocity-response)))
  "Returns md5sum for a message object of type 'SetVelocity-response"
  "ea087cf108d7c37634cddd53597622ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVelocity-response>)))
  "Returns full string definition for message of type '<SetVelocity-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVelocity-response)))
  "Returns full string definition for message of type 'SetVelocity-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVelocity-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVelocity-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetVelocity)))
  'SetVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetVelocity)))
  'SetVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVelocity)))
  "Returns string type for a service object of type '<SetVelocity>"
  "interiit21/SetVelocity")