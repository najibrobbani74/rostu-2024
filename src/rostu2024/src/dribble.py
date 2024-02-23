#!/usr/bin/env python3
from rostu2024.msg import DribbleModule, DribbleSetting
import rospy


class DribbleNode:
    dribbleModule = DribbleModule()
    dribbleSetting = DribbleSetting()

    def __init__(self) -> None:
        rospy.init_node("dribble")
        self.dribbleModulePublisher = rospy.Publisher(
            "DribbleModule", DribbleModule, queue_size=10
        )
        self.dribbleSettingSubscriber = rospy.Subscriber(
            "DribbleSetting",
            DribbleSetting,
            self.dribbleSettingSubscriberCallback,
            queue_size=10,
        )

    def dribbleSettingSubscriberCallback(self,msg: DribbleSetting):
        if msg.status == "catch":
            self.dribbleSetting = msg
            self.catchBall()
        elif msg.status == "stop":
            self.stopDribble()
    
    def catchBall(self):
        self.dribbleModule.right_motor = float(-abs(self.dribbleSetting.speed))
        self.dribbleModule.left_motor = float(abs(self.dribbleSetting.speed))
        self.dribbleModulePublisher.publish(self.dribbleModule)
    def stopDribble(self):
        self.dribbleModule.left_motor = 0.0
        self.dribbleModule.right_motor = 0.0
        self.dribbleModulePublisher.publish(self.dribbleModule)


if __name__ == "__main__":
    DribbleNode()
    rospy.spin()
