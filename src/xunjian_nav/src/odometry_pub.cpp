/*
This program is introduce something about the message of nav_msgs/Odometry
it can publish the Odometry message,and the transformation of Tf.We use the 
virtual data,it means that surcribe the Odometry message is not from the wheels'
encoder data,but from the known velocity of mobile robots.
*/


#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include"xunjian_nav/Sensor.h"
#include<math.h>
//#define L 0.367//两轮之间的距离
#define L 0.388
#define r 0.0625//轮子的半径
#define pulseCount 900//轮子转动一圈的脉冲数
#define ticks_meter 2290//机器人走一米的脉冲数
//#define ticks_meter 2204

xunjian_nav::Sensor msg;

void sensorMsg_Callback(const xunjian_nav::Sensor& sensorMsg){
    msg.yawAngle=sensorMsg.yawAngle;
    msg.leftEncoder=sensorMsg.leftEncoder;
    msg.rightEncoder=sensorMsg.rightEncoder;
    msg.vx = sensorMsg.vx;
    msg.w = sensorMsg.w;
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"odometry_pub");
	ros::NodeHandle n;
	
	ros::Subscriber sensor_sub=n.subscribe("encoder",1,sensorMsg_Callback);
	ros::Publisher odom_pub=n.advertise<nav_msgs::Odometry>("odom",50);//定义发布里程计的对象odom_pub
	tf::TransformBroadcaster odom_broadcaster;//定义odom->base_link的坐标转换对象odom_broadcaster


	//定义机器人的初始位置和初始速度
	double x=0.0;
	double y=0.0;
	//double th=msg.yawAngle;
        double th=0.0;
	//定义左轮的线速度和右轮的线速度
	double vR=0;
	double vL=0;
	double vx=0;
        double w=0;
	//定义左右轮编码器的值
	//int right_enc=msg.rightEncoder;
	//int left_enc=msg.leftEncoder;
	//int right_enc_old=msg.leftEncoder;
	//int left_enc_old=msg.leftEncoder;
	int right_enc = 0;
	int left_enc = 0;
	int right_enc_old = 0;
	int left_enc_old = 0;

	ros::Time current_time,last_time;
	current_time=ros::Time::now();
	last_time=ros::Time::now();
	ros::Rate rate(20);//机器人发布消息的频率

while(n.ok())
{
	ros::spinOnce();
	//检查收到的信息
	current_time=ros::Time::now();
	double dt=(current_time-last_time).toSec();

	right_enc=msg.rightEncoder;
	left_enc=msg.leftEncoder;
 	
        //ROS_INFO("right left right1 left1: [%d,%d,%d,%d]",right_enc, left_enc, right_enc_old, left_enc_old);
	
	vx = (float)msg.vx/1000.0;
	w =  (float)msg.w/1000.0;
	x += vx*cos(th)*dt;
	y += vx*sin(th)*dt;
	th+= w*dt;
	
     //ROS_INFO("Yaw angle: %f",th*180/M_PI);
     while (th>=2*M_PI)  th-=2*M_PI;
     while(th<0)      th+=2*M_PI;
//由机器人的偏航角得到机器人用四元素表示的姿态
//PS：实际中偏航角由六轴陀螺仪获得
	geometry_msgs::Quaternion odom_quat=tf::createQuaternionMsgFromYaw(th);

	geometry_msgs::TransformStamped odom_trans;
//时间戳信息
//通过tf发布坐标变换，这里的tf/tfMessage包含stamp信息，frame_id信息和child_frame_id信息以及translation和rotation信息
	odom_trans.header.stamp=current_time;
	odom_trans.header.frame_id="odom";
	odom_trans.child_frame_id="base_link";
	odom_trans.transform.translation.x=x;
	odom_trans.transform.translation.y=y;
	odom_trans.transform.translation.z=0.0;
	odom_trans.transform.rotation=odom_quat;

	odom_broadcaster.sendTransform(odom_trans);//发布tf变换消息
	nav_msgs::Odometry odom;
	odom.header.stamp=current_time;
	odom.header.frame_id="odom";
//得到里程计的位姿信息
	odom.pose.pose.position.x=x;
	odom.pose.pose.position.y=y;
	odom.pose.pose.position.z=0.0;
	odom.pose.pose.orientation=odom_quat;

//设置速度信息
	odom.child_frame_id="base_link";
	odom.twist.twist.linear.x=vx;
	odom.twist.twist.linear.y=0.0;
	odom.twist.twist.angular.z=w;

	odom_pub.publish(odom);//发布经过坐标变换后的里程计信息
	right_enc_old=right_enc;
	left_enc_old=left_enc;
	last_time=current_time; 

	rate.sleep();
}
    return 0;
} 
