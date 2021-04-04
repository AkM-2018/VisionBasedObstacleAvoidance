// Generated by gencpp from file marker_navigator/SetRatesYawResponse.msg
// DO NOT EDIT!


#ifndef MARKER_NAVIGATOR_MESSAGE_SETRATESYAWRESPONSE_H
#define MARKER_NAVIGATOR_MESSAGE_SETRATESYAWRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace marker_navigator
{
template <class ContainerAllocator>
struct SetRatesYawResponse_
{
  typedef SetRatesYawResponse_<ContainerAllocator> Type;

  SetRatesYawResponse_()
    : success(false)
    , message()  {
    }
  SetRatesYawResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetRatesYawResponse_

typedef ::marker_navigator::SetRatesYawResponse_<std::allocator<void> > SetRatesYawResponse;

typedef boost::shared_ptr< ::marker_navigator::SetRatesYawResponse > SetRatesYawResponsePtr;
typedef boost::shared_ptr< ::marker_navigator::SetRatesYawResponse const> SetRatesYawResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator1> & lhs, const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator1> & lhs, const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace marker_navigator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "marker_navigator/SetRatesYawResponse";
  }

  static const char* value(const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetRatesYawResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::marker_navigator::SetRatesYawResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::marker_navigator::SetRatesYawResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MARKER_NAVIGATOR_MESSAGE_SETRATESYAWRESPONSE_H
