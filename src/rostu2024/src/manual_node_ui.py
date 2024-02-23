#!/usr/bin/env python3
from manual_ui import Ui_MainWindow
from PyQt5 import QtCore, QtGui, QtWidgets
import rospy
import sys
from rostu2024.msg import Wheel,NavigationSetting,RobotStatus,KickerSetting,KickerModule,DribbleModule,DribbleSetting
import time

def customSetupCode():
    ui.speedSlider.valueChanged.connect(lambda:speedInputAction(ui.speedSlider.value()))
    ui.speedInput.valueChanged.connect(lambda:speedInputAction(ui.speedInput.value()))
    ui.directionDial.valueChanged.connect(lambda:directionDialAction(ui.directionDial.value()))
    ui.directionInput.valueChanged.connect(lambda:directionInputAction(ui.directionInput.value()))
    ui.rotationDial.valueChanged.connect(lambda:rotationDialAction(ui.rotationDial.value()))
    ui.rotationInput.valueChanged.connect(lambda:rotationInputAction(ui.rotationInput.value()))
    ui.manualRunToggle.toggled.connect(manualRunToggleAction)
    ui.kickButton.clicked.connect(kickButtonAction)
    ui.dribbleMenu.currentIndexChanged.connect(dribbleMenuAction)

def dribbleMenuAction():
    if ui.dribbleMenu.currentIndex() == 0:
        dribbleSettingMessage.speed = 0.0
        dribbleSettingMessage.status = "stop"
        dribbleSettingPublisher.publish(dribbleSettingMessage)
    elif ui.dribbleMenu.currentIndex() == 1:
        dribbleSettingMessage.speed = float(ui.dribbleSpeedInput.value())
        dribbleSettingMessage.status = "catch"
        dribbleSettingPublisher.publish(dribbleSettingMessage)

def kickButtonAction():
    kickerSettingMessage.action = True
    kickerSettingMessage.charge_time = ui.kickChargeTimeInput.value()*1000
    kickerSettingPublisher.publish(kickerSettingMessage)

def kickerModuleCallback(msg:KickerModule):
    if(msg.status != "charging"):
        ui.kickChargeTimeInput.setDisabled(False)
        ui.kickButton.setDisabled(False)
        ui.kickerStatusLabel.setText("Status : "+msg.status)
    else :
        ui.kickChargeTimeInput.setDisabled(True)
        ui.kickButton.setDisabled(True)
        for a in reversed(range(ui.kickChargeTimeInput.value())):
            ui.kickerStatusLabel.setText("Status : "+msg.status+" in "+str(a+1))
            time.sleep(1)

def manualRunToggleAction():
    if ui.manualRunToggle.isChecked():
        publishRobotStatusMessage("running")
    else:
        publishRobotStatusMessage("stop")

def directionDialAction(value):
    ui.directionInput.setValue(value+270)
def directionInputAction(value):
    ui.directionDial.setValue(value-270)
    publishNavigationSettingMessage()

def rotationDialAction(value):
    ui.rotationInput.setValue(value)
def rotationInputAction(value):
    ui.rotationDial.setValue(value)
    publishNavigationSettingMessage()
    
def speedInputAction(value):
    ui.speedInput.setValue(value)
    ui.speedSlider.setValue(value)
    publishNavigationSettingMessage()

def publishRobotStatusMessage(value):
    robotStatusMessage.status = value
    robotStatusPublisher.publish(robotStatusMessage)

def publishNavigationSettingMessage():
    navigationSettingMessage.speed = float(ui.speedInput.value())
    navigationSettingMessage.direction = float(ui.directionInput.value())
    navigationSettingMessage.rotation = float(ui.rotationInput.value())
    navigationSettingPublisher.publish(navigationSettingMessage)

if __name__ == "__main__":
    rospy.init_node("manual_ui")
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    customSetupCode()

    wheelMessage = Wheel()
    navigationSettingMessage = NavigationSetting()
    robotStatusMessage = RobotStatus()
    kickerSettingMessage = KickerSetting()
    dribbleSettingMessage = DribbleSetting()

    dribbleSettingPublisher = rospy.Publisher("DribbleSetting",DribbleSetting,queue_size=10)
    dribbleModuleSubscriber = rospy.Subscriber("DribbleModule",DribbleModule,lambda msg:ui.dribbleMonitor.setText("Dribble Monitor\n\n"+str(msg)),queue_size=10)
    kickerSettingPublisher = rospy.Publisher("KickerSetting",KickerSetting,queue_size=10)
    kickerModuleSubscriber = rospy.Subscriber("KickerModule",KickerModule,kickerModuleCallback,queue_size=10)
    navigationSettingPublisher = rospy.Publisher("NavigationSetting",NavigationSetting,queue_size=10)
    robotStatusPublisher = rospy.Publisher("RobotStatus",RobotStatus,queue_size=10)
    robotStatusSubscriber = rospy.Subscriber("RobotStatus",RobotStatus,lambda msg:ui.robotStatusMonitor.setText("Robot Status Monitor\n\n"+str(msg)),queue_size=10)
    wheelSubscriber = rospy.Subscriber("Wheel",Wheel,lambda msg:ui.wheelMonitor.setText("Wheel Monitor\n\n"+str(msg)),queue_size=10)
    wheelPublisher = rospy.Publisher("Wheel",Wheel,queue_size=10)

    MainWindow.show()
    sys.exit(app.exec_())