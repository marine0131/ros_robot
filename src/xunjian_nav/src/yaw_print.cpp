#include <ros/ros.h>
#include"xunjian_nav/Sensor.h"
#define PI 3.1415926

xunjian_nav::Sensor msg1;

void yawMsg_Callback(const xunjian_nav::Sensor& sensorMsg1){
    msg1.yawAngle=sensorMsg1.yawAngle*180.0/PI;
    msg1.leftEncoder=sensorMsg1.leftEncoder;
    msg1.rightEncoder=sensorMsg1.rightEncoder;
    ROS_INFO("Yaw angle: %f",msg1.yawAngle);
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"yaw_listener");
	ros::NodeHandle n;
	
	ros::Subscriber sensor_sub=n.subscribe("sensor_msgs",1000,yawMsg_Callback);
        ros::spin();
        ros::Rate loop_rate(1);
  while(n.ok()){
        ros::spinOnce();
	loop_rate.sleep();
        }
      
     return 0;

   }
