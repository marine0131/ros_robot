#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include"xunjian_nav/Ultrasound.h"
#include <iostream>
using namespace std;
ros::Publisher pub;
ros::Subscriber sub1;
ros::Subscriber sub2;
geometry_msgs::Twist vel1;
//vel1 是由move_base直接下发的速度cmd_vel
geometry_msgs::Twist vel2;
void cmd_velCallBack(const geometry_msgs::Twist &cmd_vel)
{
    vel1=cmd_vel;

}
void rangeCallBack(const xunjian_nav::Ultrasound &range)
{
  if(range.ultra_1>40)
  {
    vel2=vel1;
  }
  else if(range.ultra_1>20)
  {
    vel2.angular.z=0.5;
    vel2.linear.x=0;

  }
  else
  {
    vel2.angular.z=0;
    vel2.linear.x=-0.3;

  }
  pub.publish(vel2);
}

  int main(int argc,char **argv){
    ros::init(argc,argv,"ultrasound_avoid_obstacles");
    ros::NodeHandle nh;
    pub=nh.advertise<geometry_msgs::Twist>("/ultrasound/cmd_vel",1000);
    sub1=nh.subscribe("cmd_vel",1000,&cmd_velCallBack);
    sub2=nh.subscribe("ultra_dist",1000,&rangeCallBack);
    ros::spin();
    return 0;
}
//如果加入超声避障碍，此时可以把xunjian_robot.launch 中raw_cmd_vel_topic的值修改为/ultrasound/cmd_vel
