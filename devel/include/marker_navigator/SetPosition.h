// Generated by gencpp from file marker_navigator/SetPosition.msg
// DO NOT EDIT!


#ifndef MARKER_NAVIGATOR_MESSAGE_SETPOSITION_H
#define MARKER_NAVIGATOR_MESSAGE_SETPOSITION_H

#include <ros/service_traits.h>


#include <marker_navigator/SetPositionRequest.h>
#include <marker_navigator/SetPositionResponse.h>


namespace marker_navigator
{

struct SetPosition
{

typedef SetPositionRequest Request;
typedef SetPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPosition
} // namespace marker_navigator


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::marker_navigator::SetPosition > {
  static const char* value()
  {
    return "2d7d37248af6d484bb92ea095ec530c1";
  }

  static const char* value(const ::marker_navigator::SetPosition&) { return value(); }
};

template<>
struct DataType< ::marker_navigator::SetPosition > {
  static const char* value()
  {
    return "marker_navigator/SetPosition";
  }

  static const char* value(const ::marker_navigator::SetPosition&) { return value(); }
};


// service_traits::MD5Sum< ::marker_navigator::SetPositionRequest> should match
// service_traits::MD5Sum< ::marker_navigator::SetPosition >
template<>
struct MD5Sum< ::marker_navigator::SetPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetPosition >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetPositionRequest> should match
// service_traits::DataType< ::marker_navigator::SetPosition >
template<>
struct DataType< ::marker_navigator::SetPositionRequest>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetPosition >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::marker_navigator::SetPositionResponse> should match
// service_traits::MD5Sum< ::marker_navigator::SetPosition >
template<>
struct MD5Sum< ::marker_navigator::SetPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetPosition >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetPositionResponse> should match
// service_traits::DataType< ::marker_navigator::SetPosition >
template<>
struct DataType< ::marker_navigator::SetPositionResponse>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetPosition >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MARKER_NAVIGATOR_MESSAGE_SETPOSITION_H
