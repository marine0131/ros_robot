#!/usr/bin/env python
import rospy
from xunjian_nav.msg import GridPose
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import OccupancyGrid

p=PoseStamped()
m=OccupancyGrid()

def pose_callback(msg):
    p.pose=msg.pose

def map_callback(msg):
    m.info = msg.info

def handle_robot_position():
    grid_x = (uint)((p.pose.position.x-m.info.origin.position.x)/m.info.resolution)
    grid_y = (uint)((p.pose.position.y-m.info.origin.position.y)/m.info.resolution)

def robot_position_server():
    rospy.init_node('grid_pose_pub',anonymous=True)
    #srv = rospy.Service('robot_position',position,handle_robot_position)
    rospy.Subscriber("pose",PoseStamped, pose_callback)
    rospy.Subscriber("map",OccupancyGrid, map_callback)
    pose_pub = rospy.Publisher('grid_pose',GridPose,queue_size=10)

    pose_grid = GridPose()
    rate=rospy.Rate(5)
    while not rospy.is_shutdown():
        if m.info.resolution != 0.0:
            pose_grid.grid_x = (int)((p.pose.position.x-m.info.origin.position.x)/m.info.resolution)
            pose_grid.grid_y = (int)((p.pose.position.y-m.info.origin.position.y)/m.info.resolution)
            rospy.loginfo('(%d,%d)',pose_grid.grid_x,pose_grid.grid_y)
            pose_pub.publish(pose_grid)
        rate.sleep()

    rospy.spin()

if __name__ == '__main__':
    robot_position_server()
