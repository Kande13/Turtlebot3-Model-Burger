
(cl:in-package :asdf)

(defsystem "mqtt_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RosMsgType" :depends-on ("_package_RosMsgType"))
    (:file "_package_RosMsgType" :depends-on ("_package"))
  ))