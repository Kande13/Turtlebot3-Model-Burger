##TEST TO OPEN THE IMAGE

#!/usr/bin/env python3

# rospy for the subscriber
import rospy
from sensor_msgs.msg import Image # ROS Image message
from cv_bridge import CvBridge, CvBridgeError # ROS Image message -> OpenCV2 image converter
import cv2 # OpenCV2 for saving an image
import matplotlib.pyplot as plt
import glob
import os

def vizualisation_cb():
    pub = rospy.Publisher('/Visualization_april_tag', Image, queue_size= 1)  #Publish the topic
    rospy.init_node('Marker', anonymous= False)
    rate = rospy.Rate(10)

    paths = glob.glob('tag_visuel/tags_test/*')
    print(paths)

'''    f, ax = plt.subplots(1, 3, figsize=(10, 5))
    #print(ax)

    for i in range(3):
        x = i % 1
        y = i % 3

        #path1 = os.path.basename(paths[i])
        #print(path1)
        img = Image.open(paths[i])
        ax[x, y].imshow(img)
    plt.show()'''


if __name__=='__main__':

    try:
        vizualisation_cb()
    except rospy.ROSInterruptException:
        pass
