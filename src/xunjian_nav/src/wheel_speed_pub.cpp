#include<ros/ros.h>
#include<tf/transform_broadcaster.h>
#include<nav_msgs/Odometry.h>
#include<geometry_msgs/Twist.h>
#include<std_msgs/Int16.h>
#include"xunjian_nav/Wheelvelocity.h"
#include<iostream>
#define L 0.388
xunjian_nav::Wheelvelocity v ;
ros::Publisher pubVel;
//ros::Publisher *pubPtr2;
void callback(const geometry_msgs::Twist& cmd_vel)
{
	//ROS_INFO("Received a /cmd_vel message!");
	//ROS_INFO("Linear Components:[%f,%f,%f]",cmd_vel.linear.x,cmd_vel.linear.y,cmd_vel.linear.z);
	//ROS_INFO("Angular Components:[%f,%f,%f]",cmd_vel.angular.x,cmd_vel.angular.y,cmd_vel.angular.z);
	//ROS_INFO("Angular Components:[%f,%f,%f]",cmd_vel.angular.x,cmd_vel.angular.y,cmd_vel.angular.z);
	v.vl=(cmd_vel.linear.x-cmd_vel.angular.z*L/2)*1000;
	v.vr=(cmd_vel.linear.x+cmd_vel.angular.z*L/2)*1000;
	pubVel.publish(v);
	//ROS_INFO("the left wheel velocity:%f",v_l);
	//ROS_INFO("the right wheel velocity:%f",v_r);
	//v_r=...
	//wheel_left.set_speed(v_l)
	//wheel_right.set_speed(v_r)
        //pubPtr1->publish(v_l);
        //pubPtr2->publish(v_r);
}

int main(int argc,char **argv){
	ros::init(argc,argv,"wheel_speed_pub");
	ros::NodeHandle n;
  	pubVel=n.advertise<xunjian_nav::Wheelvelocity>("wheel_speed",50);
        //pubPtr2 =new ros::Publisher(n.advertise<std_msgs::Int16>("vR",1000));

	//如果是键盘控制的话，这里的主题是cmd_vel,如果是自主导航的话则速度需要经过平滑处理，所以主题就是smoother_cmd_vel
	//ros::Subscriber sub=n.subscribe("smoother_cmd_vel",1000,callback);
	ros::Subscriber sub=n.subscribe("cmd_vel",50,callback);


	//pubPtr1->publish(v);
	//ros::Rate loop_rate(100);
        //while(ros::ok()){
          // ros::spinOnce();
           //loop_rate.sleep();
         //}
        ros::spin();
        //delete pubPtr1;
	//ros::Rate loop_rate(10);
	/*while(n.ok())
	{
          ros::spinOnce();
          //pubPtr1->publish(v);
          //pubPtr1->publish(vr);
          loop_rate.sleep();
          delete pubPtr1;
          //delete pubPtr2;
	}*/
     return 0;
}
