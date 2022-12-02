; Auto-generated. Do not edit!


(cl:in-package mqtt_client-srv)


;//! \htmlinclude IsConnected-request.msg.html

(cl:defclass <IsConnected-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IsConnected-request (<IsConnected-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsConnected-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsConnected-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mqtt_client-srv:<IsConnected-request> is deprecated: use mqtt_client-srv:IsConnected-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsConnected-request>) ostream)
  "Serializes a message object of type '<IsConnected-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsConnected-request>) istream)
  "Deserializes a message object of type '<IsConnected-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsConnected-request>)))
  "Returns string type for a service object of type '<IsConnected-request>"
  "mqtt_client/IsConnectedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsConnected-request)))
  "Returns string type for a service object of type 'IsConnected-request"
  "mqtt_client/IsConnectedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsConnected-request>)))
  "Returns md5sum for a message object of type '<IsConnected-request>"
  "e0cdaf65159c7f3563426650fb8d3f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsConnected-request)))
  "Returns md5sum for a message object of type 'IsConnected-request"
  "e0cdaf65159c7f3563426650fb8d3f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsConnected-request>)))
  "Returns full string definition for message of type '<IsConnected-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsConnected-request)))
  "Returns full string definition for message of type 'IsConnected-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsConnected-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsConnected-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IsConnected-request
))
;//! \htmlinclude IsConnected-response.msg.html

(cl:defclass <IsConnected-response> (roslisp-msg-protocol:ros-message)
  ((connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsConnected-response (<IsConnected-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsConnected-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsConnected-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mqtt_client-srv:<IsConnected-response> is deprecated: use mqtt_client-srv:IsConnected-response instead.")))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <IsConnected-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mqtt_client-srv:connected-val is deprecated.  Use mqtt_client-srv:connected instead.")
  (connected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsConnected-response>) ostream)
  "Serializes a message object of type '<IsConnected-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsConnected-response>) istream)
  "Deserializes a message object of type '<IsConnected-response>"
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsConnected-response>)))
  "Returns string type for a service object of type '<IsConnected-response>"
  "mqtt_client/IsConnectedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsConnected-response)))
  "Returns string type for a service object of type 'IsConnected-response"
  "mqtt_client/IsConnectedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsConnected-response>)))
  "Returns md5sum for a message object of type '<IsConnected-response>"
  "e0cdaf65159c7f3563426650fb8d3f64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsConnected-response)))
  "Returns md5sum for a message object of type 'IsConnected-response"
  "e0cdaf65159c7f3563426650fb8d3f64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsConnected-response>)))
  "Returns full string definition for message of type '<IsConnected-response>"
  (cl:format cl:nil "bool connected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsConnected-response)))
  "Returns full string definition for message of type 'IsConnected-response"
  (cl:format cl:nil "bool connected~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsConnected-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsConnected-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IsConnected-response
    (cl:cons ':connected (connected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IsConnected)))
  'IsConnected-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IsConnected)))
  'IsConnected-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsConnected)))
  "Returns string type for a service object of type '<IsConnected>"
  "mqtt_client/IsConnected")