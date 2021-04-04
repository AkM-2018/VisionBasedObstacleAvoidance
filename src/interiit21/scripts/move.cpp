#include "ros/ros.h"
#include "std_msgs/String.h"
#include <std_msgs/Float64MultiArray.h>
#include <interiit21/control_functions.h>

//include API 

// void startToMove(std::vector<control_api_waypoint> waypointList){
//     //specify control loop rate. We recommend a low frequency to not over load the FCU with messages. Too many messages will cause the drone to be sluggish
//     ros::Rate rate(2.0);
//     int counter = 0;
//     while(ros::ok())
//     {
//         ros::spinOnce();
//         rate.sleep();
//         if(check_waypoint_reached(0.2) == 1)
//         {
//             if (counter < waypointList.size())
//             {
//                 set_destination(waypointList[counter].x,waypointList[counter].y,waypointList[counter].z, waypointList[counter].psi);
//                 counter++;  
//             }else{
//                 //land after all waypoints are reached
//                 land();
//                 //return;
//             }   
//         }   
        
//     }
// }

// void Callback(const std_msgs::Float64MultiArray::ConstPtr& msg){
//     ROS_INFO("I reached callback"); 
//     std::vector<control_api_waypoint> temp;
//     control_api_waypoint nextWayPoint;
//     nextWayPoint.x = msg->data[1];
//     nextWayPoint.y = msg->data[2];
//     nextWayPoint.z = msg->data[3];
//     nextWayPoint.psi = msg->data[4];
//     temp.push_back(nextWayPoint);
//     startToMove(temp);
// }


// void start(ros::NodeHandle n){
//     //ros::NodeHandle n;
//     ROS_INFO("In the start node!!!");
//     ros::Subscriber sub = n.subscribe("array_publish", 100, Callback);
//     ros::spin();
// }

int main(int argc, char** argv)
{
    //initialize ros 
    ros::init(argc, argv, "moveToWaypoint");
    ros::NodeHandle controlnode;
    
    //initialize control publisher/subscribers
    init_publisher_subscriber(controlnode);

    //specify some waypoints 
    std::vector<control_api_waypoint> waypointList;
    control_api_waypoint nextWayPoint;
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = 10;
    nextWayPoint.psi = 0;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = 10;
    nextWayPoint.psi = 30;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 0;
    nextWayPoint.y = 15;
    nextWayPoint.z = 10;
    nextWayPoint.psi = 60;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = 10;
    nextWayPoint.psi = 120;
    waypointList.push_back(nextWayPoint);
    nextWayPoint.x = 0;
    nextWayPoint.y = 0;
    nextWayPoint.z = 10;
    nextWayPoint.psi = 180;
    waypointList.push_back(nextWayPoint);

    // wait for FCU connection
    wait4connect();

    //wait for used to switch to mode GUIDED
    wait4start();

    //create local reference frame 
    initialize_local_frame();

    //request takeoff
    takeoff(10);

    set_destination_local({2, 2, 5});
    set_destination_local({-2, -2, 5});

    // code for pub-sub communication
    // start(controlnode);

    // start moving
    //startToMove(waypointList);

    //specify control loop rate. We recommend a low frequency to not over load the FCU with messages. Too many messages will cause the drone to be sluggish
    // ros::Rate rate(2.0);
    // int counter = 0;
    // while(ros::ok())
    // {
    //     ros::spinOnce();
    //     rate.sleep();
    //     if(check_waypoint_reached(1) == 1)
    //     {
    //         if (counter < waypointList.size())
    //         {
    //             set_destination(waypointList[counter].x,waypointList[counter].y,waypointList[counter].z, waypointList[counter].psi);
    //             counter++;  
    //         }else{
    //             //land after all waypoints are reached
    //             land();
    //         }   
    //     }   
        
    // }
    return 0;
}
