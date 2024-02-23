#!/usr/bin/env python3
from rostu2024.msg import KickerModule, KickerSetting,RobotStatus
import rospy
import time


class KickerNode:
    kickerModule = KickerModule()
    robotStatus = RobotStatus()

    def __init__(self) -> None:
        rospy.init_node("kicker")
        self.kickerModulePublisher = rospy.Publisher(
            "KickerModule", KickerModule, queue_size=10
        )
        self.kickerSettingSubscriber = rospy.Subscriber(
            "KickerSetting", KickerSetting, self.kickerSettingCallback, queue_size=10
        )
        self.robotStatusSubscriber = rospy.Subscriber('RobotStatus',RobotStatus,self.robotStatusSubscriberCallback,queue_size=10)

    def kickerSettingCallback(self, msg: KickerSetting):
        if msg.action and self.robotStatus.status != "stop" and self.robotStatus.status:
            self.charge()
            time.sleep(msg.charge_time / 1000)
            self.kick()
            time.sleep(1)
            self.stopKick()

    def charge(self):
        self.kickerModule.charger = True
        self.kickerModule.trigger = False
        self.kickerModule.status = "charging"
        self.kickerModulePublisher.publish(self.kickerModule)

    def kick(self):
        self.kickerModule.charger = False
        self.kickerModule.trigger = True
        self.kickerModule.status = "kicked"
        self.kickerModulePublisher.publish(self.kickerModule)

    def stopKick(self):
        self.kickerModule.charger = False
        self.kickerModule.trigger = False
        self.kickerModule.status = "stop"
        self.kickerModulePublisher.publish(self.kickerModule)

    def robotStatusSubscriberCallback(self,msg:RobotStatus):
        self.robotStatus = msg
        if self.robotStatus.status == "stop": self.stopKick()


if __name__ == "__main__":
    KickerNode()
    rospy.spin()
