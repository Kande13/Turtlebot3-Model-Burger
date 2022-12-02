;; Auto-generated. Do not edit!


(when (boundp 'mqtt_client::IsConnected)
  (if (not (find-package "MQTT_CLIENT"))
    (make-package "MQTT_CLIENT"))
  (shadow 'IsConnected (find-package "MQTT_CLIENT")))
(unless (find-package "MQTT_CLIENT::ISCONNECTED")
  (make-package "MQTT_CLIENT::ISCONNECTED"))
(unless (find-package "MQTT_CLIENT::ISCONNECTEDREQUEST")
  (make-package "MQTT_CLIENT::ISCONNECTEDREQUEST"))
(unless (find-package "MQTT_CLIENT::ISCONNECTEDRESPONSE")
  (make-package "MQTT_CLIENT::ISCONNECTEDRESPONSE"))

(in-package "ROS")





(defclass mqtt_client::IsConnectedRequest
  :super ros::object
  :slots ())

(defmethod mqtt_client::IsConnectedRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mqtt_client::IsConnectedResponse
  :super ros::object
  :slots (_connected ))

(defmethod mqtt_client::IsConnectedResponse
  (:init
   (&key
    ((:connected __connected) nil)
    )
   (send-super :init)
   (setq _connected __connected)
   self)
  (:connected
   (&optional (__connected :null))
   (if (not (eq __connected :null)) (setq _connected __connected)) _connected)
  (:serialization-length
   ()
   (+
    ;; bool _connected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mqtt_client::IsConnected
  :super ros::object
  :slots ())

(setf (get mqtt_client::IsConnected :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get mqtt_client::IsConnected :datatype-) "mqtt_client/IsConnected")
(setf (get mqtt_client::IsConnected :request) mqtt_client::IsConnectedRequest)
(setf (get mqtt_client::IsConnected :response) mqtt_client::IsConnectedResponse)

(defmethod mqtt_client::IsConnectedRequest
  (:response () (instance mqtt_client::IsConnectedResponse :init)))

(setf (get mqtt_client::IsConnectedRequest :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get mqtt_client::IsConnectedRequest :datatype-) "mqtt_client/IsConnectedRequest")
(setf (get mqtt_client::IsConnectedRequest :definition-)
      "---
bool connected
")

(setf (get mqtt_client::IsConnectedResponse :md5sum-) "e0cdaf65159c7f3563426650fb8d3f64")
(setf (get mqtt_client::IsConnectedResponse :datatype-) "mqtt_client/IsConnectedResponse")
(setf (get mqtt_client::IsConnectedResponse :definition-)
      "---
bool connected
")



(provide :mqtt_client/IsConnected "e0cdaf65159c7f3563426650fb8d3f64")


