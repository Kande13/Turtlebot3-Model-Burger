 #!/usr/bin/env python3


import rospy
import paho.mqtt.client as mqtt
from geometry_msgs.msg import Twist
import json

client = mqtt.Client()

#méthode de connexion (non d'd'hôte, adresse IP, la valeur du délai d'attente pour le client)
client.connect("localhost", 1883, 60)

# Function callback
#Publier une consigne de vitesse sur le topic ROS

def callback(data):
    x = {
        "linear":
            {
                "x":data.linear.x,
                "y":data.linear.y,
                "z":data.linear.z
            },
        "angular":
            {
                "x":data.angular.x,
                "y":data.angular.y,
                "z":data.angular.z
            }
        }
    rospy.loginfo(x)
    rospy.Publisher('/topic_cmd_vel', Twist, queue_size=10)
    client.publish('/topic_cmd_vel', json.dumps(x))

# souscrire à un topic MQTT

def mqtt_ros_listener():
    rospy.init_node('ros_mqtt', anonymous=True)

    rospy.Subscriber('/cmd_vel', Twist, callback)

    rospy.spin()

if __name__ == '__main__':
    mqtt_ros_listener()
