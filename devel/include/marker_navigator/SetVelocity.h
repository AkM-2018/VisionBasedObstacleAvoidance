// Generated by gencpp from file marker_navigator/SetVelocity.msg
// DO NOT EDIT!


#ifndef MARKER_NAVIGATOR_MESSAGE_SETVELOCITY_H
#define MARKER_NAVIGATOR_MESSAGE_SETVELOCITY_H

#include <ros/service_traits.h>


#include <marker_navigator/SetVelocityRequest.h>
#include <marker_navigator/SetVelocityResponse.h>


namespace marker_navigator
{

struct SetVelocity
{

typedef SetVelocityRequest Request;
typedef SetVelocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetVelocity
} // namespace marker_navigator


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::marker_navigator::SetVelocity > {
  static const char* value()
  {
    return "ea087cf108d7c37634cddd53597622ce";
  }

  static const char* value(const ::marker_navigator::SetVelocity&) { return value(); }
};

template<>
struct DataType< ::marker_navigator::SetVelocity > {
  static const char* value()
  {
    return "marker_navigator/SetVelocity";
  }

  static const char* value(const ::marker_navigator::SetVelocity&) { return value(); }
};


// service_traits::MD5Sum< ::marker_navigator::SetVelocityRequest> should match
// service_traits::MD5Sum< ::marker_navigator::SetVelocity >
template<>
struct MD5Sum< ::marker_navigator::SetVelocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetVelocity >::value();
  }
  static const char* value(const ::marker_navigator::SetVelocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetVelocityRequest> should match
// service_traits::DataType< ::marker_navigator::SetVelocity >
template<>
struct DataType< ::marker_navigator::SetVelocityRequest>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetVelocity >::value();
  }
  static const char* value(const ::marker_navigator::SetVelocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::marker_navigator::SetVelocityResponse> should match
// service_traits::MD5Sum< ::marker_navigator::SetVelocity >
template<>
struct MD5Sum< ::marker_navigator::SetVelocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetVelocity >::value();
  }
  static const char* value(const ::marker_navigator::SetVelocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetVelocityResponse> should match
// service_traits::DataType< ::marker_navigator::SetVelocity >
template<>
struct DataType< ::marker_navigator::SetVelocityResponse>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetVelocity >::value();
  }
  static const char* value(const ::marker_navigator::SetVelocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MARKER_NAVIGATOR_MESSAGE_SETVELOCITY_H