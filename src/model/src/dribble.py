#!/usr/bin/env python3
from rostu_interfaces.msg import DribbleModule,DribbleSetting
import rospy
def dribbleSettingSubscriberCallback(msg:DribbleSetting):
    if(msg.status == "catch"):
        newMsg = DribbleModule()
        newMsg.right_motor = float(-abs(msg.speed))
        newMsg.left_motor = float(abs(msg.speed))
        dribbleModulePublisher.publish(newMsg)
    elif(msg.status == "stop"):
        newMsg = DribbleModule()
        newMsg.left_motor = 0.0
        newMsg.right_motor = 0.0
        dribbleModulePublisher.publish(newMsg)
if __name__ == "__main__":
    rospy.init_node("dribble")
    dribbleModulePublisher = rospy.Publisher('DribbleModule',DribbleModule,queue_size=10)
    dribbleSettingSubscriber = rospy.Subscriber('DribbleSetting',DribbleSetting,dribbleSettingSubscriberCallback,queue_size=10)
    rospy.spin()