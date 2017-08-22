#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "move_base/move_base.h" 
#include <cstdlib>

#define DOOR 0
#define SERVER 1
#define BOSS 2
#define WC 3
#define GATE 4
using namespace std;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
class Goals{
	public:
		Goals(){
		}
		void set_alias(string a){
			alias = a;
		}
		void set_frame(string frame_id){
			goal.target_pose.header.frame_id = frame_id;
		}
		move_base_msgs::MoveBaseGoal get_goal(){
			return goal;
		}
		void set_position(double x, double y, double z ){
			goal.target_pose.pose.position.x = x;
			goal.target_pose.pose.position.y = y;
			goal.target_pose.pose.position.z = z;
		}
		void set_quat(double x, double y, double z ,double w){
			goal.target_pose.pose.orientation.x = x;
			goal.target_pose.pose.orientation.y = y;
			goal.target_pose.pose.orientation.z = z;
			goal.target_pose.pose.orientation.w = w;		
		}

	private:
		string alias;
		move_base_msgs::MoveBaseGoal goal;
};


int main(int argc, char** argv){
	ros::init(argc, argv, "nav_goal");
	ros::NodeHandle nh;
	//tell the action client that we want to spin a tread by default
	ros::ServiceClient client=nh.serviceClient<std_srvs::Empty>("/move_base/clear_costmaps");
	std_srvs::Empty srv;
	MoveBaseClient ac("move_base", true);
	Goals goals[20];

	goals[0].set_frame("map");
	goals[0].set_position(0.088,2.398,0);
	goals[0].set_quat(0,0,0.814,0.580);
	goals[1].set_frame("map");
	goals[1].set_position(4.710,5.683,0);
	goals[1].set_quat(0,0,-0.611,0.792);
	goals[2].set_frame("map");
	goals[2].set_position(4.941,-5.283,0);
	goals[2].set_quat(0,0,-0.602,0.799);
	goals[3].set_frame("map");
	goals[3].set_position(4.902,9.369,0);
	goals[3].set_quat(0,0,-0.619,0.785);
	goals[5].set_frame("map");
	goals[5].set_position(6.794,0.273,0);
	goals[5].set_quat(0,0,-0.602,0.799);

	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0))){
		ROS_INFO("Waiting for the move_base action server to come up");	
	}
	int p[4]={WC, SERVER, BOSS, SERVER};
	int ii = 0;
	while(ros::ok()){
		if (ii>=4) ii = 0;
		ac.sendGoal(goals[p[ii]].get_goal());
		ii ++;	
		if(client.call(srv)){
			 ROS_INFO("I got the goal and clear costmap"); 
		}

		ac.waitForResult();
		if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			ROS_INFO("I reached goal");
		else
			ROS_INFO("fail to reach the goal");
	}
	return 0;	
}
