# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "message_runtime;nodelet;roscpp;std_msgs;topic_tools".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmqtt_client;/opt/ros/noetic/lib/x86_64-linux-gnu/libpaho-mqttpp3.so.1.2.0".split(';') if "-lmqtt_client;/opt/ros/noetic/lib/x86_64-linux-gnu/libpaho-mqttpp3.so.1.2.0" != "" else []
PROJECT_NAME = "mqtt_client"
PROJECT_SPACE_DIR = "/home/kande/catkin_ws/install"
PROJECT_VERSION = "1.1.0"
