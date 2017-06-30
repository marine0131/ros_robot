#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
int goal_flag = 0;
int main(int argc, char** argv){
	ros::init(argc, argv, "nav_goal");
	//tell the action client that we want to spin a tread by default
	MoveBaseClient ac("move_base", true);
	
	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0))){
		ROS_INFO("Waiting for the move_base action server to come up");	
	}
	
	move_base_msgs::MoveBaseGoal goal;
	
	goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();
	while(ros::ok()){
		if(goal_flag==0){
			goal_flag = 1;
			goal.target_pose.pose.position.x = 1.45884692669;
			goal.target_pose.pose.position.y = 0.41893029213;
			goal.target_pose.pose.orientation.z = 0.380679358544;
			goal.target_pose.pose.orientation.w = 0.924707102805;
		}
		else if(goal_flag==1){		
			goal_flag = 2;
			goal.target_pose.pose.position.x = 6.51145744324;
			goal.target_pose.pose.position.y = -2.35952734947;
			goal.target_pose.pose.orientation.z = 0.909674541736;
			goal.target_pose.pose.orientation.w = -0.415321836794;
		}else{
			goal_flag = 0;
			goal.target_pose.pose.position.x = -0.576218009;
			goal.target_pose.pose.position.y = 1.0124691725;
			goal.target_pose.pose.orientation.z = -0.3492525274;
			goal.target_pose.pose.orientation.w = 0.9370286399;
		}
			
		ac.sendGoal(goal);
		ac.waitForResult();
		if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			ROS_INFO("goal reached");
		else
			ROS_INFO("fail to reach the goal");
	}
	return 0;	
}
