#!/usr/bin/env python3
import rospy
import math
from rostu_interfaces.msg import Wheel, NavigationSetting, RobotStatus



def navigateRobot(msg: NavigationSetting):
    degree, speed, rotation = msg.direction, msg.speed, msg.rotation
    theta1, theta2, theta3 = 150.0, 270.0, 30.0
    # theta1, theta2, theta3 = 300.0, 180.0, 60.0
    left_wheel = math.sin((degree - theta1) * (math.pi / 180.0))
    bottom_wheel = math.sin((degree - theta2) * (math.pi / 180.0))
    right_wheel = math.sin((degree - theta3) * (math.pi / 180.0))

    left_wheel = left_wheel * speed
    bottom_wheel = bottom_wheel * speed
    right_wheel = right_wheel * speed

    wheel = [left_wheel,bottom_wheel,right_wheel]
    left_wheel,bottom_wheel,right_wheel = checkRotationCriteria(rotation,wheel)

    newMsg = Wheel()
    newMsg.left_wheel = float(
        math.ceil(left_wheel) if left_wheel < 0 else math.floor(left_wheel)
    )
    newMsg.bottom_wheel = float(
        math.ceil(bottom_wheel) if bottom_wheel < 0 else math.floor(bottom_wheel)
    )
    newMsg.right_wheel = float(
        math.ceil(right_wheel) if right_wheel < 0 else math.floor(right_wheel)
    )
    wheelPublisher.publish(newMsg)

def checkRotationCriteria(rotation,wheel):
    for i,value in enumerate(wheel):
        if (value*rotation >= 0 or (value == rotation)):
            # print(sorted([a for a in wheel if a*rotation >= 0 ]))
            if(sorted([a for a in wheel if a*rotation >= 0 ]).index(value) == 0):
                wheel[i] = (value + rotation) if (value+rotation) <=255 and (value+rotation)>=-255 else 255 if value >=0 else -255
                break
    return wheel

def robotStatusCallback(msg: RobotStatus):
    if msg.status == "stop":
        stopRobot()


def stopRobot():
    newMsg = Wheel()
    newMsg.left_wheel = 0.0
    newMsg.bottom_wheel = 0.0
    newMsg.right_wheel = 0.0
    wheelPublisher.publish(newMsg)


if __name__ == "__main__":
    rospy.init_node("wheel")
    navigationSettingSubscriber = rospy.Subscriber('NavigationSetting',NavigationSetting,navigateRobot,queue_size=10)
    robotStatusSubscriber = rospy.Subscriber('RobotStatus',RobotStatus,robotStatusCallback,queue_size=10)
    wheelPublisher = rospy.Publisher("Wheel", Wheel, queue_size=10)
    rospy.spin()
