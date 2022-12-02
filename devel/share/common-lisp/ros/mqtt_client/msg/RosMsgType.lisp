; Auto-generated. Do not edit!


(cl:in-package mqtt_client-msg)


;//! \htmlinclude RosMsgType.msg.html

(cl:defclass <RosMsgType> (roslisp-msg-protocol:ros-message)
  ((md5
    :reader md5
    :initarg :md5
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (definition
    :reader definition
    :initarg :definition
    :type cl:string
    :initform ""))
)

(cl:defclass RosMsgType (<RosMsgType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RosMsgType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RosMsgType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mqtt_client-msg:<RosMsgType> is deprecated: use mqtt_client-msg:RosMsgType instead.")))

(cl:ensure-generic-function 'md5-val :lambda-list '(m))
(cl:defmethod md5-val ((m <RosMsgType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mqtt_client-msg:md5-val is deprecated.  Use mqtt_client-msg:md5 instead.")
  (md5 m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RosMsgType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mqtt_client-msg:name-val is deprecated.  Use mqtt_client-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'definition-val :lambda-list '(m))
(cl:defmethod definition-val ((m <RosMsgType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mqtt_client-msg:definition-val is deprecated.  Use mqtt_client-msg:definition instead.")
  (definition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RosMsgType>) ostream)
  "Serializes a message object of type '<RosMsgType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'md5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'md5))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'definition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'definition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RosMsgType>) istream)
  "Deserializes a message object of type '<RosMsgType>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'md5) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'md5) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'definition) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'definition) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RosMsgType>)))
  "Returns string type for a message object of type '<RosMsgType>"
  "mqtt_client/RosMsgType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RosMsgType)))
  "Returns string type for a message object of type 'RosMsgType"
  "mqtt_client/RosMsgType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RosMsgType>)))
  "Returns md5sum for a message object of type '<RosMsgType>"
  "ff43d621269e869c559e9a58071d41e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RosMsgType)))
  "Returns md5sum for a message object of type 'RosMsgType"
  "ff43d621269e869c559e9a58071d41e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RosMsgType>)))
  "Returns full string definition for message of type '<RosMsgType>"
  (cl:format cl:nil "# This message contains information about a ROS Message Type.~%~%string md5          # MD5 sum of ROS message type~%string name         # ROS message type name (e.g. 'std_msgs/Float32')~%string definition   # ROS message type definition (e.g. 'float data')~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RosMsgType)))
  "Returns full string definition for message of type 'RosMsgType"
  (cl:format cl:nil "# This message contains information about a ROS Message Type.~%~%string md5          # MD5 sum of ROS message type~%string name         # ROS message type name (e.g. 'std_msgs/Float32')~%string definition   # ROS message type definition (e.g. 'float data')~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RosMsgType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'md5))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'definition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RosMsgType>))
  "Converts a ROS message object to a list"
  (cl:list 'RosMsgType
    (cl:cons ':md5 (md5 msg))
    (cl:cons ':name (name msg))
    (cl:cons ':definition (definition msg))
))
