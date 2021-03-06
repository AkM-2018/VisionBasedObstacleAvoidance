// Generated by gencpp from file interiit21/SetPositionRequest.msg
// DO NOT EDIT!


#ifndef INTERIIT21_MESSAGE_SETPOSITIONREQUEST_H
#define INTERIIT21_MESSAGE_SETPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace interiit21
{
template <class ContainerAllocator>
struct SetPositionRequest_
{
  typedef SetPositionRequest_<ContainerAllocator> Type;

  SetPositionRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , frame_id()
    , update_frame(false)  {
    }
  SetPositionRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , frame_id(_alloc)
    , update_frame(false)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frame_id_type;
  _frame_id_type frame_id;

   typedef uint8_t _update_frame_type;
  _update_frame_type update_frame;





  typedef boost::shared_ptr< ::interiit21::SetPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interiit21::SetPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPositionRequest_

typedef ::interiit21::SetPositionRequest_<std::allocator<void> > SetPositionRequest;

typedef boost::shared_ptr< ::interiit21::SetPositionRequest > SetPositionRequestPtr;
typedef boost::shared_ptr< ::interiit21::SetPositionRequest const> SetPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interiit21::SetPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interiit21::SetPositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interiit21::SetPositionRequest_<ContainerAllocator1> & lhs, const ::interiit21::SetPositionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.yaw == rhs.yaw &&
    lhs.frame_id == rhs.frame_id &&
    lhs.update_frame == rhs.update_frame;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interiit21::SetPositionRequest_<ContainerAllocator1> & lhs, const ::interiit21::SetPositionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interiit21

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::interiit21::SetPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interiit21::SetPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interiit21::SetPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interiit21::SetPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interiit21::SetPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interiit21::SetPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interiit21::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "07e448d83e5d16315d524be9837d9899";
  }

  static const char* value(const ::interiit21::SetPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x07e448d83e5d1631ULL;
  static const uint64_t static_value2 = 0x5d524be9837d9899ULL;
};

template<class ContainerAllocator>
struct DataType< ::interiit21::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interiit21/SetPositionRequest";
  }

  static const char* value(const ::interiit21::SetPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interiit21::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 yaw\n"
"string frame_id\n"
"bool update_frame\n"
;
  }

  static const char* value(const ::interiit21::SetPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interiit21::SetPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
      stream.next(m.frame_id);
      stream.next(m.update_frame);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interiit21::SetPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interiit21::SetPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frame_id);
    s << indent << "update_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.update_frame);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERIIT21_MESSAGE_SETPOSITIONREQUEST_H
