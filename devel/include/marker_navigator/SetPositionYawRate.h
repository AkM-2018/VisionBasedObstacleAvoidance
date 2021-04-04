// Generated by gencpp from file marker_navigator/SetPositionYawRate.msg
// DO NOT EDIT!


#ifndef MARKER_NAVIGATOR_MESSAGE_SETPOSITIONYAWRATE_H
#define MARKER_NAVIGATOR_MESSAGE_SETPOSITIONYAWRATE_H

#include <ros/service_traits.h>


#include <marker_navigator/SetPositionYawRateRequest.h>
#include <marker_navigator/SetPositionYawRateResponse.h>


namespace marker_navigator
{

struct SetPositionYawRate
{

typedef SetPositionYawRateRequest Request;
typedef SetPositionYawRateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPositionYawRate
} // namespace marker_navigator


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::marker_navigator::SetPositionYawRate > {
  static const char* value()
  {
    return "63e77cdfe8f2694b3948c26357897f50";
  }

  static const char* value(const ::marker_navigator::SetPositionYawRate&) { return value(); }
};

template<>
struct DataType< ::marker_navigator::SetPositionYawRate > {
  static const char* value()
  {
    return "marker_navigator/SetPositionYawRate";
  }

  static const char* value(const ::marker_navigator::SetPositionYawRate&) { return value(); }
};


// service_traits::MD5Sum< ::marker_navigator::SetPositionYawRateRequest> should match
// service_traits::MD5Sum< ::marker_navigator::SetPositionYawRate >
template<>
struct MD5Sum< ::marker_navigator::SetPositionYawRateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetPositionYawRate >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionYawRateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetPositionYawRateRequest> should match
// service_traits::DataType< ::marker_navigator::SetPositionYawRate >
template<>
struct DataType< ::marker_navigator::SetPositionYawRateRequest>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetPositionYawRate >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionYawRateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::marker_navigator::SetPositionYawRateResponse> should match
// service_traits::MD5Sum< ::marker_navigator::SetPositionYawRate >
template<>
struct MD5Sum< ::marker_navigator::SetPositionYawRateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::marker_navigator::SetPositionYawRate >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionYawRateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::marker_navigator::SetPositionYawRateResponse> should match
// service_traits::DataType< ::marker_navigator::SetPositionYawRate >
template<>
struct DataType< ::marker_navigator::SetPositionYawRateResponse>
{
  static const char* value()
  {
    return DataType< ::marker_navigator::SetPositionYawRate >::value();
  }
  static const char* value(const ::marker_navigator::SetPositionYawRateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MARKER_NAVIGATOR_MESSAGE_SETPOSITIONYAWRATE_H