#include <ros/ros.h>
#include"xunjian_nav/Ultrasound.h"
xunjian_nav::Ultrasound range_msg;

void rangeMsg_Callback(const xunjian_nav::Ultrasound& rangeMsg1){
    range_msg.ultra_1=rangeMsg1.ultra_1;
    range_msg.ultra_2=rangeMsg1.ultra_2;
    range_msg.ultra_3=rangeMsg1.ultra_3;
    range_msg.ultra_4=rangeMsg1.ultra_4;
    range_msg.ultra_5=rangeMsg1.ultra_5;
    range_msg.ultra_6=rangeMsg1.ultra_6;
    ROS_INFO("Range: [%d] [%d] [%d] [%d] [%d] [%d]",range_msg.ultra_1,range_msg.ultra_2,
    range_msg.ultra_3,range_msg.ultra_4,range_msg.ultra_5,range_msg.ultra_6);
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"range_listener");
	ros::NodeHandle n;

	ros::Subscriber range_sub=n.subscribe("range",1000,rangeMsg_Callback);
  ros::Rate loop_rate(10);
  while(n.ok()){
        ros::spinOnce();
	      loop_rate.sleep();
    }

     return 0;

   }
