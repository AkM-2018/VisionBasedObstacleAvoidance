// Generated by gencpp from file interiit21/SetRatesYaw.msg
// DO NOT EDIT!


#ifndef INTERIIT21_MESSAGE_SETRATESYAW_H
#define INTERIIT21_MESSAGE_SETRATESYAW_H

#include <ros/service_traits.h>


#include <interiit21/SetRatesYawRequest.h>
#include <interiit21/SetRatesYawResponse.h>


namespace interiit21
{

struct SetRatesYaw
{

typedef SetRatesYawRequest Request;
typedef SetRatesYawResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetRatesYaw
} // namespace interiit21


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::interiit21::SetRatesYaw > {
  static const char* value()
  {
    return "8e9ec92299c2414ab4a1798226c4bd30";
  }

  static const char* value(const ::interiit21::SetRatesYaw&) { return value(); }
};

template<>
struct DataType< ::interiit21::SetRatesYaw > {
  static const char* value()
  {
    return "interiit21/SetRatesYaw";
  }

  static const char* value(const ::interiit21::SetRatesYaw&) { return value(); }
};


// service_traits::MD5Sum< ::interiit21::SetRatesYawRequest> should match
// service_traits::MD5Sum< ::interiit21::SetRatesYaw >
template<>
struct MD5Sum< ::interiit21::SetRatesYawRequest>
{
  static const char* value()
  {
    return MD5Sum< ::interiit21::SetRatesYaw >::value();
  }
  static const char* value(const ::interiit21::SetRatesYawRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::interiit21::SetRatesYawRequest> should match
// service_traits::DataType< ::interiit21::SetRatesYaw >
template<>
struct DataType< ::interiit21::SetRatesYawRequest>
{
  static const char* value()
  {
    return DataType< ::interiit21::SetRatesYaw >::value();
  }
  static const char* value(const ::interiit21::SetRatesYawRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::interiit21::SetRatesYawResponse> should match
// service_traits::MD5Sum< ::interiit21::SetRatesYaw >
template<>
struct MD5Sum< ::interiit21::SetRatesYawResponse>
{
  static const char* value()
  {
    return MD5Sum< ::interiit21::SetRatesYaw >::value();
  }
  static const char* value(const ::interiit21::SetRatesYawResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::interiit21::SetRatesYawResponse> should match
// service_traits::DataType< ::interiit21::SetRatesYaw >
template<>
struct DataType< ::interiit21::SetRatesYawResponse>
{
  static const char* value()
  {
    return DataType< ::interiit21::SetRatesYaw >::value();
  }
  static const char* value(const ::interiit21::SetRatesYawResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INTERIIT21_MESSAGE_SETRATESYAW_H