#include"ros/ros.h"
#include<sensor_msgs/LaserScan.h>
#include<sensor_msgs/Range.h>
#include "xunjian_nav/Ultrasound.h"

#define PI 3.14159265
#define DEG_TO_RAD(x) (x * PI / 180.0)
#define MIN_ANGLE -180
#define MAX_ANGLE  180
#define DEG_INCREMENT 60
#define MAX_RANGE     0.5
class SubscribeAndPublish
{
  private:
    ros::NodeHandle n_;
    ros::Publisher pub_;
    ros::Subscriber sub_;
  public:
    SubscribeAndPublish() 
    { 
    //Topic you want to publish 
      ros::Rate r(60);
      pub_ = n_.advertise<sensor_msgs::LaserScan>("scan",100);
    //Topic you want to subscribe 
      sub_ = n_.subscribe("range_dist", 100, &SubscribeAndPublish::callback, this);
    }

    void callback(const xunjian_nav::Ultrasound& input) 
      { 
         int id=0;
         sensor_msgs::LaserScan     output; 
         output.header.stamp = ros::Time::now();
         output.header.frame_id = "laser";
         output.angle_min=DEG_TO_RAD(MIN_ANGLE);
         output.angle_max=DEG_TO_RAD(MAX_ANGLE);
         output.angle_increment=DEG_TO_RAD(DEG_INCREMENT);
         output.time_increment=0.1;
         output.scan_time=0.1;
         output.range_min=0.03;
         output.range_max=0.5;

         output.ranges.push_back(input.ultra_1/100.0);
         output.intensities.push_back(0.5);
         output.ranges.push_back(input.ultra_2/100.0);
         output.intensities.push_back(0.5);
         output.ranges.push_back(input.ultra_3/100.0);
         output.intensities.push_back(0.5);
         output.ranges.push_back(input.ultra_4/100.0);
         output.intensities.push_back(0.5);
         output.ranges.push_back(input.ultra_5/100.0);
         output.intensities.push_back(0.5);
         output.ranges.push_back(input.ultra_6/100.0);
         output.intensities.push_back(0.5);
         pub_.publish(output);
  } 
};


int main(int argc, char **argv)
{ 
//Initiate ROS 
ros::init(argc, argv, "sonar2laser");
//Create an object of class SubscribeAndPublish that will take care of everything 
SubscribeAndPublish SAPObject;
ros::spin();
return 0;
}

