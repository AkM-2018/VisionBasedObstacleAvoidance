#!/usr/bin/env python
from __future__ import print_function

import rospy
import sys
import cv2
from std_msgs.msg import String, Float64MultiArray
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

def subscriber():
	# downImage = rospy.Subscriber('/camera/color/image_raw', Image, landing)
	frontImage = rospy.Subscriber('/depth_camera/depth/image_raw', Image, get_directions)
	#frontImageRGB = rospy.Subscriber('/depth_camera/rgb/image_raw', Image, callback)
	rospy.spin()

# def landing(message):
# 	bridge = CvBridge()
# 	cv_image = bridge.imgmsg_to_cv2(message, "bgr8")

# 	(rows,cols,channels) = cv_image.shape

# 	arucoDict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_5X5_1000)
# 	arucoParams = cv2.aruco.DetectorParameters_create()
# 	(corners, ids, rejected) = cv2.aruco.detectMarkers(cv_image, arucoDict, parameters=arucoParams)

# 	# if no aruco markers are detected
# 	if len(corners) > 0:
# 		ids = ids.flatten()

# 		for (markerCorner, markerID) in zip(corners, ids):
# 			if markerID != 0:
# 				rospy.loginfo("Looking for marker...")	
# 				continue;
# 			else:
# 				rospy.loginfo("Found a marker")
# 				corners = markerCorner.reshape((4, 2))
# 				(topLeft, topRight, bottomRight, bottomLeft) = corners
# 				topRight = (int(topRight[0]), int(topRight[1]))
# 				bottomRight = (int(bottomRight[0]), int(bottomRight[1]))
# 				bottomLeft = (int(bottomLeft[0]), int(bottomLeft[1]))
# 				topLeft = (int(topLeft[0]), int(topLeft[1]))

# 				# draw the bounding box of the ArUCo detection
# 				cv2.line(cv_image, topLeft, topRight, (0, 255, 0), 2)
# 				cv2.line(cv_image, topRight, bottomRight, (0, 255, 0), 2)
# 				cv2.line(cv_image, bottomRight, bottomLeft, (0, 255, 0), 2)
# 				cv2.line(cv_image, bottomLeft, topLeft, (0, 255, 0), 2)
# 				# compute and draw the center (x, y)-coordinates of the ArUco
# 				# marker
# 				cX = int((topLeft[0] + bottomRight[0]) / 2.0)
# 				cY = int((topLeft[1] + bottomRight[1]) / 2.0)
# 				cv2.circle(cv_image, (cX, cY), 4, (0, 0, 255), -1)
# 				# draw the ArUco marker ID on the image
# 				cv2.putText(cv_image, str(markerID), (topLeft[0], topLeft[1] - 15), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
# 				###############################################################################
# 				# do something to make uav go to the aruco, land and shutdown
# 				send_data_to_publisher("land", DIRECTIONS_GO_HERE)
# 				###############################################################################
			
# 	cv2.imshow("down_camera", cv_image)
# 	cv2.waitKey(3)	

def get_directions(message):
	bridge = CvBridge()
	cv_image = bridge.imgmsg_to_cv2(message)
	cv2.imshow("depth_camera", cv_image)
	cv2.imwrite("test.png", cv2.convertScaleAbs(cv_image, alpha=(255.0)))
	cv2.waitKey(3)

	# some algorithm goes here

	#send_data_to_publisher("air", DIRECTIONS_GO_HERE);

# def send_data_to_publisher(info, direction):
# 	pub = rospy.Publisher('directions_publish', Float64MultiArray, queue_size = 10)
# 	rate = rospy.Rate(0.1)
# 	msg_to_publish = Float64MultiArray()
# 	msg_to_publish.data = [0,0,0,0,0]

# 	if(info == "land"):
# 		msg_to_publish.data[0] = 1

# 	# change other directions before publishing

# 	pub.publish(msg_to_publish)
# 	rospy.loginfo(msg_to_publish)
# 	rate.sleep()

if __name__ == "__main__":
	rospy.init_node("simple_subscriber")
	subscriber()
