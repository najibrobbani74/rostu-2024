#ifndef _ROS_rostu_interfaces_DribbleModule_h
#define _ROS_rostu_interfaces_DribbleModule_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rostu_interfaces
{

  class DribbleModule : public ros::Msg
  {
    public:
      typedef float _left_motor_type;
      _left_motor_type left_motor;
      typedef float _right_motor_type;
      _right_motor_type right_motor;

    DribbleModule():
      left_motor(0),
      right_motor(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      offset += serializeAvrFloat64(outbuffer + offset, this->left_motor);
      offset += serializeAvrFloat64(outbuffer + offset, this->right_motor);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->left_motor));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->right_motor));
     return offset;
    }

    virtual const char * getType() override { return "rostu_interfaces/DribbleModule"; };
    virtual const char * getMD5() override { return "fbb6fd297edf2b990d3b5effd8454d72"; };

  };

}
#endif
