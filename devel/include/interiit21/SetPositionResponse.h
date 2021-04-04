// Generated by gencpp from file interiit21/SetPositionResponse.msg
// DO NOT EDIT!


#ifndef INTERIIT21_MESSAGE_SETPOSITIONRESPONSE_H
#define INTERIIT21_MESSAGE_SETPOSITIONRESPONSE_H


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
struct SetPositionResponse_
{
  typedef SetPositionResponse_<ContainerAllocator> Type;

  SetPositionResponse_()
    : success(false)
    , message()  {
    }
  SetPositionResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::interiit21::SetPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interiit21::SetPositionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetPositionResponse_

typedef ::interiit21::SetPositionResponse_<std::allocator<void> > SetPositionResponse;

typedef boost::shared_ptr< ::interiit21::SetPositionResponse > SetPositionResponsePtr;
typedef boost::shared_ptr< ::interiit21::SetPositionResponse const> SetPositionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interiit21::SetPositionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interiit21::SetPositionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interiit21::SetPositionResponse_<ContainerAllocator1> & lhs, const ::interiit21::SetPositionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interiit21::SetPositionResponse_<ContainerAllocator1> & lhs, const ::interiit21::SetPositionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interiit21

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::interiit21::SetPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interiit21::SetPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interiit21::SetPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interiit21::SetPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interiit21::SetPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interiit21::SetPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interiit21::SetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::interiit21::SetPositionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::interiit21::SetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interiit21/SetPositionResponse";
  }

  static const char* value(const ::interiit21::SetPositionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interiit21::SetPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::interiit21::SetPositionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interiit21::SetPositionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPositionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interiit21::SetPositionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interiit21::SetPositionResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERIIT21_MESSAGE_SETPOSITIONRESPONSE_H
