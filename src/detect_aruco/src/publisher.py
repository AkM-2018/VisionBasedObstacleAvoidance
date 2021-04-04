#!/usr/bin/env python 

import rospy
import numpy as np
import cv2
import cv2.aruco as aruco
import sys, time, math
from std_msgs.msg import String, Float64MultiArray, Header
from geometry_msgs.msg import Vector3, Vector3Stamped
from mavros_msgs.msg import PositionTarget

def publisher():
	pub = rospy.Publisher('vel_publisher', PositionTarget, queue_size = 10)
	rate = rospy.Rate(1)
	msg_to_publish = PositionTarget()
	curTime = rospy.Time.now()
	print(curTime)
	# msg_to_publish = {header: {stamp: now, frame_id: "world"}, coordinate_frame: 8, type_mask: 3527, velocity: {x: 0.5, y: 0, z: 0}}

	while not rospy.is_shutdown():
		msg_to_publish = {header: {stamp: curTime, frame_id: "world"}, coordinate_frame: 8, type_mask: 3527, velocity: {x: 0.5, y: 0, z: 0}}
		pub.publish(msg_to_publish)
		rospy.loginfo("i'm publishing")
		rate.sleep()

# def publisher():
# 	pub = rospy.Publisher('array_publish', Float64MultiArray, queue_size = 10)
# 	rate = rospy.Rate(0.2)
# 	msg_to_publish = Float64MultiArray()
# 	arr = [0, 0, 0, 0, 0]
# 	counter = 0

# 	while not rospy.is_shutdown():
# 		string_to_pub = "%d"%counter
# 		counter += 1
# 		arr[1] = counter

# 		msg_to_publish.data = arr
# 		pub.publish(msg_to_publish)
# 		rospy.loginfo(msg_to_publish.data)
# 		rate.sleep()

# def publisher():
# 	pub = rospy.Publisher('string_publish', String, queue_size = 10)
# 	rate = rospy.Rate(0.1)
# 	msg_to_publish = String()
# 	counter = 0

# 	while not rospy.is_shutdown():
# 		string_to_pub = "%d"%counter
# 		counter += 1

# 		msg_to_publish.data = string_to_pub
# 		pub.publish(msg_to_publish)
# 		rospy.loginfo(string_to_pub)
# 		rate.sleep()

if __name__ == "__main__":
	rospy.init_node("simple_publisher")
	publisher()