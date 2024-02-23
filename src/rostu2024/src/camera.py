#!/usr/bin/env python3
from sensor_msgs.msg import Image 
import rospy
from cv_bridge import CvBridge
import cv2
import numpy as np
from rostu2024.msg import BallPositionBasedOnCamera
import math



def sendVideo(event):
    cvBridge = CvBridge()
    ret, frame = video.read()
    frame = cv2.flip(frame,1)
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

    # Melakukan thresholding pada frame HSV
    thresholding = cv2.inRange(hsv, low, up)

    # Melakukan morfologi opening pada hasil thresholding
    opening = cv2.morphologyEx(thresholding, cv2.MORPH_OPEN, kernel)

    objCntr = cv2.findContours(opening.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)[-2] 
    if len(objCntr) > 0:
        # Mencari contour terbesar
        c = max(objCntr, key=cv2.contourArea)
        # Membuat lingkaran terkecil yang mengelilingi bola
        ((x, y), radius) = cv2.minEnclosingCircle(c)
        
        # Mendapatkan posisi bola pada gambar
        M = cv2.moments(c)
        x = int(M["m10"] / M["m00"])
        y = int(M["m01"] / M["m00"])

        string = " " + str(x) + "," + str(y)
        
        if radius > 0:
            cv2.circle(frame, (int(x), int(y)), int(radius), (0, 0, 255), 2)
            cv2.circle(frame, (x,y), 5, (0, 255, 0), -1)
            cv2.putText(frame, string, (x,y), cv2.FONT_HERSHEY_TRIPLEX, 0.5, (0, 255, 0))
        
        x2 = 340 - x
        y2 = y - 250
        
        # Jarak bola dalam frame (pixel)
        r = math.sqrt(x2**2 + y2**2)
        
        # Mendapatkan jarak bola terhadap robot
        if int(r) < 183:
            r2 = 0.0034*int(r)**2 + 0.056*int(r) - 3E-14
        if int(r) >= 183 and int(r) <= 210:
            r2 = 0.2062*int(r)**2 - 73.552*int(r) + 6703
        if int(r) > 210:
            r2 = 5.2466*int(r)**2 - 2222*int(r) + 235656

        # Mendapatkan sudut bola
        sdt = math.atan2(y2,x2)
        sudut = math.degrees(sdt) + 180


        # Mendapatkan posisi bola di lapangan
        a = 0
        b = 50
        deltax = - math.cos (sdt+math.pi)*int(r2)
        deltay = math.sin (sdt+math.pi)*int(r2)
        xbola = deltax + b
        ybola = deltay + a
        
        dataBola = BallPositionBasedOnCamera()
        dataBola.distance = int(r2)
        dataBola.angle = int(sudut)
        dataBola.x_on_camera = int(x)
        dataBola.y_on_camera = int(y)
        dataBola.x_real = int(xbola)
        dataBola.y_real = int(ybola)
        # datajarak_cam.publish(int(r2))
        # datasudut_cam.publish(int(sudut))
        # datax_cam.publish(int(xbola))
        # datay_cam.publish(int(ybola))

        cv2.putText(frame, "Jarak: {} cm".format(int(r2)), (10, frame.shape[0] - 50), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)
        cv2.putText(frame, "Sudut: {} derajat".format(int(sudut)), (10, frame.shape[0] - 30), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)
        cv2.putText(frame, "xbola: {}, ybola: {}".format(int(xbola), int(ybola)), (10, frame.shape[0] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)

    cv2.circle(frame, (320, 240), 3, (0, 0, 255), 2)

    if ret == True:
        videoCameraPublisher.publish(cvBridge.cv2_to_imgmsg(frame,'bgr8'))

if __name__ == "__main__":
    rospy.init_node("camera")
    videoCameraPublisher = rospy.Publisher("CameraVideo", Image, queue_size=10)
    video = cv2.VideoCapture(0)
    # set video frame
    video.set(3, 640)
    video.set(4, 480)
    kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE,(3,3))
    low = np.load('/media/najibrobbani/Data/program/code/project/ros/rostu/src/model/src/data1.npy')
    up = np.load('/media/najibrobbani/Data/program/code/project/ros/rostu/src/model/src/data2.npy')
    fps = video.get(cv2.CAP_PROP_FPS)
    rospy.Timer(rospy.Duration(0.1), sendVideo)
    rospy.spin()