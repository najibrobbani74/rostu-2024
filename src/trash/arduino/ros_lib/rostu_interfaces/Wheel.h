#ifndef _ROS_rostu_interfaces_Wheel_h
#define _ROS_rostu_interfaces_Wheel_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace rostu_interfaces
{

  class Wheel : public ros::Msg
  {
    public:
      typedef float _left_wheel_type;
      _left_wheel_type left_wheel;
      typedef float _right_wheel_type;
      _right_wheel_type right_wheel;
      typedef float _bottom_wheel_type;
      _bottom_wheel_type bottom_wheel;

    Wheel():
      left_wheel(0),
      right_wheel(0),
      bottom_wheel(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const override
    {
      int offset = 0;
      offset += serializeAvrFloat64(outbuffer + offset, this->left_wheel);
      offset += serializeAvrFloat64(outbuffer + offset, this->right_wheel);
      offset += serializeAvrFloat64(outbuffer + offset, this->bottom_wheel);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer) override
    {
      int offset = 0;
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->left_wheel));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->right_wheel));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->bottom_wheel));
     return offset;
    }

    virtual const char * getType() override { return "rostu_interfaces/Wheel"; };
    virtual const char * getMD5() override { return "3043d084108e8cb8de33e26dbb60e64b"; };

  };

}
#endif
