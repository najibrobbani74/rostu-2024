
import rospy
from rostu_interfaces.msg import BallPositionBasedOnCamera, RobotStatus

def robotStatusSubscriberCallback(msg:RobotStatus):
    global robotStatus
    robotStatus = msg.status    
def ballPositionBasedOnCameraCallback(msg:BallPositionBasedOnCamera):
    if(robotStatus == "chase_ball"):
        pass
if __name__ == '__main__':
    rospy.init_node('chaseBall')
    robotStatus = "stop"
    ballPositionBasedOnCameraSubscriber = rospy.Subscriber('ChaseBall',BallPositionBasedOnCamera,ballPositionBasedOnCameraCallback,queue_size=10)
    robotStatusSubscriber = rospy.Subscriber('RobotStatus',RobotStatus,robotStatusSubscriberCallback,queue_size=10)
    rospy.spin()