#!/usr/bin/env python3
from sensor_msgs.msg import Image 
from cv_bridge import CvBridge
import cv2 
import numpy 
import rospy
    
def showVideo(msg):
    cvBridge = CvBridge()
    image = cvBridge.imgmsg_to_cv2(msg,'bgr8')
    image = numpy.array(image, dtype=numpy.uint8)
    cv2.imshow("Camera",image)
    cv2.waitKey(10)

if __name__ == '__main__':
    rospy.init_node('video')
    videoCameraSubscriber = rospy.Subscriber('CameraVideo',Image,showVideo,queue_size=10)
    rospy.spin()
