#!/usr/bin/env python
import rospy
import actionlib

from graph_navigation.msg import*

rospy.init_node("graph_navi_starter");
c=actionlib.SimpleActionClient('graph_navi',graph_naviAction);
c.wait_for_server()
goal=graph_naviGoal()
goal.start=0
goal.goal=7
goal.checkPoint=[5,6]
c.send_goal(goal)
c.wait_for_result()