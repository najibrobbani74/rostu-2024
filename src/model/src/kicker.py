#!/usr/bin/env python3
from rostu_interfaces.msg import KickerModule,KickerSetting
import rospy
import time

def kickerSettingCallback(msg:KickerSetting):
    if(msg.action):
        charge()
        time.sleep(msg.charge_time/1000)
        kick()
def charge():
    msg = KickerModule()
    msg.charger = True
    msg.trigger = False
    msg.status = "charging"
    kickerModulePublisher.publish(msg)
def kick():
    msg = KickerModule()
    msg.charger = False
    msg.trigger = True
    msg.status = "stop"
    kickerModulePublisher.publish(msg)
if __name__ == "__main__":
    rospy.init_node("kicker")
    kickerModulePublisher = rospy.Publisher('KickerModule',KickerModule,queue_size=10)
    kickerSettingSubscriber = rospy.Subscriber('KickerSetting',KickerSetting,kickerSettingCallback,queue_size=10)
    rospy.spin()