;; Auto-generated. Do not edit!


(when (boundp 'mqtt_client::RosMsgType)
  (if (not (find-package "MQTT_CLIENT"))
    (make-package "MQTT_CLIENT"))
  (shadow 'RosMsgType (find-package "MQTT_CLIENT")))
(unless (find-package "MQTT_CLIENT::ROSMSGTYPE")
  (make-package "MQTT_CLIENT::ROSMSGTYPE"))

(in-package "ROS")
;;//! \htmlinclude RosMsgType.msg.html


(defclass mqtt_client::RosMsgType
  :super ros::object
  :slots (_md5 _name _definition ))

(defmethod mqtt_client::RosMsgType
  (:init
   (&key
    ((:md5 __md5) "")
    ((:name __name) "")
    ((:definition __definition) "")
    )
   (send-super :init)
   (setq _md5 (string __md5))
   (setq _name (string __name))
   (setq _definition (string __definition))
   self)
  (:md5
   (&optional __md5)
   (if __md5 (setq _md5 __md5)) _md5)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:definition
   (&optional __definition)
   (if __definition (setq _definition __definition)) _definition)
  (:serialization-length
   ()
   (+
    ;; string _md5
    4 (length _md5)
    ;; string _name
    4 (length _name)
    ;; string _definition
    4 (length _definition)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _md5
       (write-long (length _md5) s) (princ _md5 s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _definition
       (write-long (length _definition) s) (princ _definition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _md5
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _md5 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _definition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _definition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mqtt_client::RosMsgType :md5sum-) "ff43d621269e869c559e9a58071d41e7")
(setf (get mqtt_client::RosMsgType :datatype-) "mqtt_client/RosMsgType")
(setf (get mqtt_client::RosMsgType :definition-)
      "# This message contains information about a ROS Message Type.

string md5          # MD5 sum of ROS message type
string name         # ROS message type name (e.g. 'std_msgs/Float32')
string definition   # ROS message type definition (e.g. 'float data')
")



(provide :mqtt_client/RosMsgType "ff43d621269e869c559e9a58071d41e7")


