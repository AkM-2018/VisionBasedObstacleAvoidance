#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from std_msgs.msg import Float64
import threading
import time
import math

import mavros_msgs.msg
import mavros_msgs.srv
from geometry_msgs.msg import PoseStamped
#from mavrosBasicCommands.copterHandler import *


currentState = mavros_msgs.msg.State() 
currentPose = PoseStamped()
pose = PoseStamped()
currentHeading = Float64() 
isTakeoff = False

def stateCallback(data):
    currentState=data

def poseCallback(data):
    currentPose = data
    rospy.loginfo(currentPose.pose.position)

def headingCallback(data):
    currentHeading = data


def arm():
    dataArmed = mavros_msgs.srv.CommandBoolRequest()
    dataArmed.value = True
       

    rospy.wait_for_service("/mavros/cmd/arming",timeout=30)
    try:
        srvProxy = rospy.ServiceProxy("/mavros/cmd/arming", mavros_msgs.srv.CommandBool)
        srvResult = srvProxy(dataArmed)
        rospy.loginfo(srvResult)

        return srvResult.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def disarm():
    dataArmed = mavros_msgs.srv.CommandBoolRequest()
    dataArmed.value = False
       

    rospy.wait_for_service("/mavros/cmd/arming",timeout=30)
    try:
        srvProxy = rospy.ServiceProxy("/mavros/cmd/arming", mavros_msgs.srv.CommandBool)
        srvResult = srvProxy(dataArmed)
        rospy.loginfo(srvResult)

        return srvResult.success
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
    
    
def changeMode(mode):
    data = mavros_msgs.srv.SetModeRequest()
    data.custom_mode = mode
    rospy.wait_for_service("/mavros/set_mode",timeout=30)
    try:
        srvProxy = rospy.ServiceProxy("/mavros/set_mode", mavros_msgs.srv.SetMode)
        srvResult = srvProxy(data)
        rospy.loginfo(srvResult)

        return srvResult.mode_sent
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


def takeoff():
    data = mavros_msgs.srv.CommandTOLRequest()
    data.altitude = 5
    rospy.wait_for_service("/mavros/set_mode",timeout=30)
    try:
        srvProxy = rospy.ServiceProxy("/mavros/cmd/takeoff", mavros_msgs.srv.CommandTOL)
        srvResult = srvProxy(data)
        rospy.loginfo(srvResult)
        isTakeoff = True

        return srvResult.success
    except rospy.ServiceException as e:
        isTakeoff = False
        print("Service call failed: %s"%e)


def move(x, y, z):
        rate = rospy.Rate(20) # 10hz
        while not rospy.is_shutdown():
            for i in range(20):

                pose.pose.position.x = x;
                pose.pose.position.y = y;
                pose.pose.position.z = z;
                pose.pose.orientation.w = 90;
                localPositionPublisher.publish(pose)
                #rospy.loginfo(currentPose.pose.position)
                deltaX = abs(pose.pose.position.x - currentPose.pose.position.x);
                deltaY = abs(pose.pose.position.y - currentPose.pose.position.y);
                deltaZ = abs(pose.pose.position.z - currentPose.pose.position.z);
                dMag = math.sqrt( (deltaX*2) + (deltaY*2) + (deltaZ*2) );
                #rospy.loginfo(dMag)
                if dMag < 0.5:
                    break
                rate.sleep()

# def move():
#     data = PoseStamped();
#     data.pose.position.x = 10
#     data.pose.position.y = 10
#     data.pose.position.z = 10
#     try:
#         srvProxy = rospy.ServiceProxy("setpoint_position/local", PoseStamped)
#         srvResult = srvProxy(data)
#     except Exception as e:
#         raise e

def user():
    while True:
        time.sleep(1)
        
        changeMode("GUIDED")
        arm()
        takeoff()



if __name__ == '__main__':

    rospy.init_node('moveCopter', anonymous=True)
    rate = rospy.Rate(20) # 10hz
    isTakeoff = False
    currentStateSubscriber = rospy.Subscriber("/mavros/state",mavros_msgs.msg.State,stateCallback)
    currentPositionSubscriber = rospy.Subscriber("/mavros/local_position/pose",PoseStamped,poseCallback)
    currentHeadingSubscriber = rospy.Subscriber("/mavros/global_position/compass_hdg",Float64,headingCallback)

    pub = rospy.Publisher('/mavros/setpoint_raw/local', mavros_msgs.msg.PositionTarget, queue_size=10)
    localPositionPublisher = rospy.Publisher("mavros/setpoint_position/local",PoseStamped,queue_size=10);
            
    rospy.loginfo("initializing")

    changeMode("GUIDED")
    arm()
    isTakeoff = takeoff()
    print(isTakeoff)
    rospy.sleep(10)
    if takeoff:
        rospy.loginfo(currentPose.pose.orientation)
        move(4,4,4)
    

    