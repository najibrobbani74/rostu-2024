#!/usr/bin/env python3
import rospy
import math
from rostu2024.msg import Wheel, NavigationSetting, RobotStatus

class WheelNode():
    wheel = Wheel()
    navigationSetting = NavigationSetting()
    robotStatus = RobotStatus()

    def __init__(self) -> None:
        rospy.init_node("wheel")
        self.wheelPublisher = rospy.Publisher("Wheel", Wheel, queue_size=10)
        self.navigationSettingSubscriber = rospy.Subscriber('NavigationSetting',NavigationSetting,self.navigationSettingSubscriberCallback,queue_size=10)
        self.robotStatusSubscriber = rospy.Subscriber('RobotStatus',RobotStatus,self.robotStatusSubscriberCallback,queue_size=10)

    def navigateRobot(self):
        degree, speed, rotation = self.navigationSetting.direction, self.navigationSetting.speed, self.navigationSetting.rotation
        theta1, theta2, theta3 = 150.0, 270.0, 30.0
        # theta1, theta2, theta3 = 300.0, 180.0, 60.0
        left_wheel = math.sin((degree - theta1) * (math.pi / 180.0))
        bottom_wheel = math.sin((degree - theta2) * (math.pi / 180.0))
        right_wheel = math.sin((degree - theta3) * (math.pi / 180.0))

        left_wheel = left_wheel * speed
        bottom_wheel = bottom_wheel * speed
        right_wheel = right_wheel * speed

        wheel = [left_wheel,bottom_wheel,right_wheel]
        left_wheel,bottom_wheel,right_wheel = self.checkRotationCriteria(rotation,wheel)

        self.wheel.left_wheel = float(
            math.ceil(left_wheel) if left_wheel < 0 else math.floor(left_wheel)
        )
        self.wheel.bottom_wheel = float(
            math.ceil(bottom_wheel) if bottom_wheel < 0 else math.floor(bottom_wheel)
        )
        self.wheel.right_wheel = float(
            math.ceil(right_wheel) if right_wheel < 0 else math.floor(right_wheel)
        )
        self.wheelPublisher.publish(self.wheel)

    def checkRotationCriteria(self,rotation,wheel):
        for i,value in enumerate(wheel):
            if (value*rotation >= 0 or (value == rotation)):
                if(sorted([a for a in wheel if a*rotation >= 0 ]).index(value) == 0):
                    wheel[i] = (value + rotation) if (value+rotation) <=255 and (value+rotation)>=-255 else 255 if value >=0 else -255
                    break
        return wheel
    
    def stopRobot(self):
        self.wheel.left_wheel = 0.0
        self.wheel.bottom_wheel = 0.0
        self.wheel.right_wheel = 0.0
        self.wheelPublisher.publish(self.wheel)
    
    def navigationSettingSubscriberCallback(self,msg:NavigationSetting):
        self.navigationSetting.speed = msg.speed
        self.navigationSetting.direction = msg.direction
        self.navigationSetting.rotation = msg.rotation
        if self.robotStatus.status != "stop" and self.robotStatus.status : self.navigateRobot()

    def robotStatusSubscriberCallback(self,msg:RobotStatus):
        self.robotStatus.status = msg.status
        if msg.status == "stop": self.stopRobot()
        else: self.navigateRobot()











if __name__ == "__main__":
    WheelNode()
    rospy.spin()
