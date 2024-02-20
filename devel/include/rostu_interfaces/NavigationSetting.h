// Generated by gencpp from file rostu_interfaces/NavigationSetting.msg
// DO NOT EDIT!


#ifndef ROSTU_INTERFACES_MESSAGE_NAVIGATIONSETTING_H
#define ROSTU_INTERFACES_MESSAGE_NAVIGATIONSETTING_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rostu_interfaces
{
template <class ContainerAllocator>
struct NavigationSetting_
{
  typedef NavigationSetting_<ContainerAllocator> Type;

  NavigationSetting_()
    : speed(0.0)
    , direction(0.0)
    , rotation(0.0)  {
    }
  NavigationSetting_(const ContainerAllocator& _alloc)
    : speed(0.0)
    , direction(0.0)
    , rotation(0.0)  {
  (void)_alloc;
    }



   typedef double _speed_type;
  _speed_type speed;

   typedef double _direction_type;
  _direction_type direction;

   typedef double _rotation_type;
  _rotation_type rotation;





  typedef boost::shared_ptr< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> const> ConstPtr;

}; // struct NavigationSetting_

typedef ::rostu_interfaces::NavigationSetting_<std::allocator<void> > NavigationSetting;

typedef boost::shared_ptr< ::rostu_interfaces::NavigationSetting > NavigationSettingPtr;
typedef boost::shared_ptr< ::rostu_interfaces::NavigationSetting const> NavigationSettingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rostu_interfaces::NavigationSetting_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rostu_interfaces::NavigationSetting_<ContainerAllocator1> & lhs, const ::rostu_interfaces::NavigationSetting_<ContainerAllocator2> & rhs)
{
  return lhs.speed == rhs.speed &&
    lhs.direction == rhs.direction &&
    lhs.rotation == rhs.rotation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rostu_interfaces::NavigationSetting_<ContainerAllocator1> & lhs, const ::rostu_interfaces::NavigationSetting_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rostu_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f31eebfa73f5c8acdb331fc8bb73189";
  }

  static const char* value(const ::rostu_interfaces::NavigationSetting_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f31eebfa73f5c8aULL;
  static const uint64_t static_value2 = 0xcdb331fc8bb73189ULL;
};

template<class ContainerAllocator>
struct DataType< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rostu_interfaces/NavigationSetting";
  }

  static const char* value(const ::rostu_interfaces::NavigationSetting_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 speed\n"
"float64 direction\n"
"float64 rotation\n"
;
  }

  static const char* value(const ::rostu_interfaces::NavigationSetting_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
      stream.next(m.direction);
      stream.next(m.rotation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavigationSetting_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rostu_interfaces::NavigationSetting_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rostu_interfaces::NavigationSetting_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "direction: ";
    Printer<double>::stream(s, indent + "  ", v.direction);
    s << indent << "rotation: ";
    Printer<double>::stream(s, indent + "  ", v.rotation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSTU_INTERFACES_MESSAGE_NAVIGATIONSETTING_H