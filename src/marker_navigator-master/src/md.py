#!/usr/bin/env python

import sys
import rospy
import math
import cv2
import numpy as np
from sensor_msgs.msg import Image
from std_msgs.msg import String
from cv_bridge import CvBridge, CvBridgeError
from marker_navigator.srv import*
from mavros_msgs.srv import CommandBool, SetMode

taskCompleted = False
lastYaw = 0 # 0 meaning anticlockwise, 1 meaning clockwise. yaw positive means anticlockwise
groundPic = None

def d2r(deg):
    return deg*3.14/180

def subscriber():
    rospy.loginfo('In subscriber')
    downImage = rospy.Subscriber('/camera/color/image_raw', Image, downCam)
    depthImage = rospy.Subscriber('/depth_camera/depth/image_raw', Image, move)
    rospy.spin()

def publisher(num):
    pub = rospy.Publisher('Aruco/message', String, queue_size = 10)
    msg_to_publish = String()
    if num == 1:
        string_to_pub = "Marker ID : 0, Landed"
    else:
        string_to_pub = "Marker ID: none, looking for marker"
    msg_to_publish.data = string_to_pub
    pub.publish(msg_to_publish)

def downCam(message):
    global groundPic
    bridge = CvBridge()
    groundPic = bridge.imgmsg_to_cv2(message, "bgr8")

def aruco_detected():
    arucoDict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_5X5_1000)
    arucoParams = cv2.aruco.DetectorParameters_create()
    (corners, ids, rejected) = cv2.aruco.detectMarkers(groundPic, arucoDict, parameters=arucoParams)

    if len(corners) > 0:
        ids = ids.flatten()
        for (markerCorner, markerID) in zip(corners, ids):
            if markerID == 0:
                rospy.loginfo('aruco detected!!! moving towards it!!')
                cornersOfMarker = markerCorner.reshape((4, 2))
                (topLeft, topRight, bottomRight, bottomLeft) = cornersOfMarker
                bottomRight = (int(bottomRight[0]), int(bottomRight[1]))
                topLeft = (int(topLeft[0]), int(topLeft[1]))
                cX = int((topLeft[0] + bottomRight[0]) / 2.0)
                cY = int((topLeft[1] + bottomRight[1]) / 2.0)
                coordinates = (cX, cY)
                rospy.loginfo("center of marker: x " + str(cX) + " y " + str(cY))
                return True, coordinates
 
    return False, (-1,-1)              
    
def move(message):
    global taskCompleted
    rospy.loginfo('In move!!')
    bridge = CvBridge()
    cv_image = bridge.imgmsg_to_cv2(message, "32FC1")
    
    data = np.asarray(cv_image)
    rospy.loginfo(cv_image[240][290:350])

    for i in range(640):
        if math.isnan(data[240][i]):
            data[240][i] = 0
        else:
            data[240][i] = 1

    zerosLeft = 0
    zerosRight = 0
    isSafe = True
    for i in range(640):
        if (i > 280 and i < 360) and data[240][i] == 1:
            isSafe = False
            break

        if data[240][i] == 0 and i < 320:
            zerosLeft = zerosLeft + 1
        elif data[240][i] == 0 and i > 320:
            zerosRight = zerosRight + 1

    rospy.loginfo(isSafe)
    rospy.loginfo(data[240][250:370])
    rospy.loginfo(len(data))
    rospy.loginfo("zeros R: " + str(zerosRight))
    rospy.loginfo("zeros L: " + str(zerosLeft))

    isArucoDetected, coordinates = aruco_detected() 

    if taskCompleted == True:
         rospy.loginfo('Done With Everything!!!')
         publisher(1)

    elif isArucoDetected == True:
        rospy.loginfo('Moving towards aruco!!!!')
        x,y = coordinates
        moveHorizontal = 0
        moveVertical = 0
        if (x > 290 and x < 350) and (y > 210 and y < 270):
            rospy.loginfo('In Landing part!!')
            land()
            taskCompleted = True
        if not (x > 290 and x < 350) == True:
            if x <= 290:
                moveHorizontal = 0.5
            else:
                moveHorizontal = -0.5
        if not (y > 210 and y < 270) == True:
            if y <= 210:
                moveVertical = 0.5
            else:
                moveVertical = -0.5

        if taskCompleted == False:
            move_to_destination(moveVertical,moveHorizontal,0,0)
        publisher(0)

    elif isSafe:
        move_to_destination(-3,0,0,0)
        publisher(0)
    else:
        if zerosLeft > zerosRight:
            move_to_destination(0,0,0,d2r(5))
        else:
            move_to_destination(0,0,0,-1*d2r(5))   
        publisher(0) 

    cv2.imshow("depth_cam", cv_image)
    cv2.waitKey(3)
    rospy.loginfo("move sleeping now...")

# def move(message):
#     global taskCompleted
#     global lastYaw
#     rospy.loginfo('In move!!')
#     bridge = CvBridge()
#     cv_image = bridge.imgmsg_to_cv2(message, "32FC1")    
#     data = np.asarray(cv_image)

#     for i in range(640):
#         if math.isnan(data[240][i]):
#             data[240][i] = 0
#         else:
#             data[240][i] = 1

#     zerosLeft = 0
#     zerosRight = 0
#     isSafeHorizontal = True
    
#     for i in range(640):
#         if (i > 290 and i < 350) and data[240][i] == 1:
#             isSafeHorizontal = False
#             break

#         if data[240][i] == 0 and i < 320:
#             zerosLeft = zerosLeft + 1
#         elif data[240][i] == 0 and i > 320:
#             zerosRight = zerosRight + 1

#     #rospy.loginfo(isSafe)
#     # rospy.loginfo(data[240][290:350])
#     #rospy.loginfo(len(data))
#     rospy.loginfo("zeros R: " + str(zerosRight))
#     rospy.loginfo("zeros L: " + str(zerosLeft))

#     isArucoDetected, coordinates = aruco_detected() 

#     if taskCompleted == True:
#         rospy.loginfo('Done With Everything!!!')

#     elif isArucoDetected == True:
#         rospy.loginfo('Moving towards aruco!!!!')
#         x,y = coordinates
#         moveHorizontal = 0
#         moveVertical = 0
#         if (x > 290 and x < 350) and (y > 210 and y < 270):
#             rospy.loginfo('In Landing part!!')
#             land()
#             taskCompleted = True
#         if not (x > 290 and x < 350) == True:
#             if x <= 290:
#                 moveHorizontal = 0.5
#             else:
#                 moveHorizontal = -0.5
#         if not (y > 210 and y < 270) == True:
#             if y <= 210:
#                 moveVertical = 0.5
#             else:
#                 moveVertical = -0.5

#         if taskCompleted == False:
#             move_to_destination(moveVertical,moveHorizontal,0,0)

#     elif isSafeHorizontal:
#         if zerosLeft >= zerosRight:
#             move_to_destination(-0.5,-0.05,0,0)
#             rospy.loginfo("moving left")
#         else:
#             move_to_destination(-0.5,0.05,0,0)
#             rospy.loginfo("moving right")

#     elif all(x == 1 for x in data[240]):
#         if lastYaw == 1:
#             move_to_destination(0,0,0,d2r(90))
#         else :
#             move_to_destination(0,0,0,-1*d2r(90))

#     else:
#         if zerosLeft >= zerosRight:
#             move_to_destination(0,0,0,d2r(5))
#             lastYaw = 0
#         else:
#             move_to_destination(0,0,0,-1*d2r(5)) 
#             lastYaw = 1   
    
#     cv2.imshow("depth_cam", cv_image)
#     cv2.waitKey(3)
#     rospy.loginfo("move sleeping now...")

def move_to_destination(x,y,z,yaw,frame_id='fcu_horiz'):
    rospy.loginfo('moving to destination...')
    rospy.wait_for_service('set_position')
    try:
        set_position = rospy.ServiceProxy('set_position', SetPosition)
        resp1 = set_position(x = x, y = y ,z = z, yaw = yaw, frame_id=frame_id)
        rospy.loginfo(resp1.success)
        return resp1.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def land():
    rospy.wait_for_service('/mavros/set_mode')
    try:
        set_mode = rospy.ServiceProxy('/mavros/set_mode', SetMode)
        resp1 = set_mode(custom_mode='LAND')
        # rospy.loginfo(resp1.success)
        # return resp1.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    rospy.loginfo("in moveDrone main!!")
    rospy.init_node('my_node_name')
    move_to_destination(0,0,0,d2r(180))
    rospy.sleep(5)
    move_to_destination(-2,0,0,0)
    rospy.sleep(5)
    subscriber()