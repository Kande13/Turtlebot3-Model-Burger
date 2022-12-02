#!/usr/bin/env python3


import paho.mqtt.client as mqtt
from pynput.keyboard import Key, Listener

import paho.mqtt.client as mqtt
import sys, tty, termios

def on_connect(client, userdata, flags, rc):
   print("Connected with result code "+str(rc))
   client.subscribe("/topic_cmd_vel")

def on_message(client, userdata, msg):
   print(msg.topic+" "+str(msg.payload))
   char = str(msg.payload)
   if char == 'x':
       client.disconnect()


## L'éditeur lit une entrée clavier 
def getch():
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd,termios.TCSADRAIN, old_settings)
    return ch

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message
client.connect("localhost", 1883, 60)
client.loop_forever()


# L'éditeur se connecte au broker MQTT
mqttc= mqtt.Client("python_pub")
mqttc.connect("localhost", 1883)
mqttc.loop_start()

while True:
    char= getch()
    mqttc.publish("/topic_cmd_vel", str(char))
