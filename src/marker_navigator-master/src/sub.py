#!/usr/bin/env python

import rospy
import sys
import cv2
import os
from std_msgs.msg import String, Float64MultiArray
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import subprocess

def sub():
	rospy.loginfo("in sub! Now processing...")
	frontImage = rospy.Subscriber('/depth_camera/depth/image_raw', Image, get_directions)
	rospy.loginfo('Done. sub sleeping now...')
	rospy.sleep(10)
	rospy.spin()

def get_directions(message):
	rospy.loginfo("in get_directions!!")
	bridge = CvBridge()
	image = bridge.imgmsg_to_cv2(message)

	# grayImage = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
	# ret,thresh2 = cv2.threshold(grayImage,127,255,cv2.THRESH_BINARY_INV)
	# image, contours, hierarchy = cv2.findContours(thresh2, cv2.RETR_CCOMP, cv2.CHAIN_APPROX_SIMPLE)

	# maxArea = -1, maxX = -1, maxY = -1;
	# for c in contours:
	#     M = cv2.moments(c)
	#     cX = int(M["m10"] / M["m00"])
	#     cY = int(M["m01"] / M["m00"])
	#     area = cv2.contourArea(c)
	#     if area > maxArea:
	#     	area = maxArea
	#     	maxX = cX
	#     	maxY = cY

	

if __name__ == "__main__":
	rospy.init_node("sub")
	sub()