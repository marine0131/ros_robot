#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include"xunjian_nav/Encoder.h"
ros::Publisher vel_pub;
geometry_msgs::Twist v;
void callback(const xunjian_nav::Encoder& sensorMsg )
{
  v.linear.x =(float)sensorMsg.vx/1000.0;
  v.angular.z =(float)sensorMsg.w/1000.0;
  vel_pub.publish(v);
}

int main(int argc, char **argv)
{
  ros::init(argc,argv,"robot_vel_pub");
  ros::NodeHandle n;
  vel_pub =n.advertise<geometry_msgs::Twist>("robot_cmd_vel",50);
  ros::Subscriber sub =n.subscribe("encoder",50,callback);
  ros::spin();
  return 0;
}

