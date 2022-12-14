// Generated by gencpp from file mqtt_client/IsConnectedResponse.msg
// DO NOT EDIT!


#ifndef MQTT_CLIENT_MESSAGE_ISCONNECTEDRESPONSE_H
#define MQTT_CLIENT_MESSAGE_ISCONNECTEDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mqtt_client
{
template <class ContainerAllocator>
struct IsConnectedResponse_
{
  typedef IsConnectedResponse_<ContainerAllocator> Type;

  IsConnectedResponse_()
    : connected(false)  {
    }
  IsConnectedResponse_(const ContainerAllocator& _alloc)
    : connected(false)  {
  (void)_alloc;
    }



   typedef uint8_t _connected_type;
  _connected_type connected;





  typedef boost::shared_ptr< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IsConnectedResponse_

typedef ::mqtt_client::IsConnectedResponse_<std::allocator<void> > IsConnectedResponse;

typedef boost::shared_ptr< ::mqtt_client::IsConnectedResponse > IsConnectedResponsePtr;
typedef boost::shared_ptr< ::mqtt_client::IsConnectedResponse const> IsConnectedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mqtt_client::IsConnectedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mqtt_client::IsConnectedResponse_<ContainerAllocator1> & lhs, const ::mqtt_client::IsConnectedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.connected == rhs.connected;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mqtt_client::IsConnectedResponse_<ContainerAllocator1> & lhs, const ::mqtt_client::IsConnectedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mqtt_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0cdaf65159c7f3563426650fb8d3f64";
  }

  static const char* value(const ::mqtt_client::IsConnectedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0cdaf65159c7f35ULL;
  static const uint64_t static_value2 = 0x63426650fb8d3f64ULL;
};

template<class ContainerAllocator>
struct DataType< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mqtt_client/IsConnectedResponse";
  }

  static const char* value(const ::mqtt_client::IsConnectedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool connected\n"
;
  }

  static const char* value(const ::mqtt_client::IsConnectedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.connected);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IsConnectedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mqtt_client::IsConnectedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mqtt_client::IsConnectedResponse_<ContainerAllocator>& v)
  {
    s << indent << "connected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.connected);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MQTT_CLIENT_MESSAGE_ISCONNECTEDRESPONSE_H
