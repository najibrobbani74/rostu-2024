# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'coba.ui'
#
# Created by: PyQt5 UI code generator 5.14.1
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets
import rospy
from rostu2024.msg import Wheel


class Ui_Dialog(object):
    def __init__(self) -> None:
        self.wheelSpeedSubscriber = rospy.Subscriber('Wheel',Wheel,self.displayWheel,queue_size=10)
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(400, 300)
        self.textBrowser = QtWidgets.QTextEdit(Dialog)
        self.textBrowser.setGeometry(QtCore.QRect(10, 10, 371, 281))
        self.textBrowser.setObjectName("textBrowser")
        self.textBrowser.setText('aaaa \n kkkkkkkkkk')

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Dialog"))
    def displayWheel(self,msg):
        self.textBrowser.setText(str(msg))


if __name__ == "__main__":
    rospy.init_node('haha')
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
