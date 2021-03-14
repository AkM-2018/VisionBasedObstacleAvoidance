#!/usr/bin/env python
from __future__ import print_function

import rospy
import roslib
#roslib.load_manifest('my_package')
import sys
import cv2
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

def subscriber():
	#sub = rospy.Subscriber('string_publish', String, callback_function)
	sub = rospy.Subscriber('/depth_camera/rgb/image_raw', Image , callback_function)
	rospy.spin()

def callback_function(message):
	bridge = CvBridge()
	cv_image = bridge.imgmsg_to_cv2(message, "bgr8")

	(rows,cols,channels) = cv_image.shape
	if cols > 60 and rows > 60:
		cv2.circle(cv_image, (50,50), 10, 255)

	cv2.imshow("Image window", cv_image)
	cv2.waitKey(3)
	rospy.loginfo(cv_image.shape)

if __name__ == "__main__":
	rospy.init_node("simple_subscriber")
	subscriber()