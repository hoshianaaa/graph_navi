// Generated by gencpp from file graph_server/NodeInfoRequest.msg
// DO NOT EDIT!


#ifndef GRAPH_SERVER_MESSAGE_NODEINFOREQUEST_H
#define GRAPH_SERVER_MESSAGE_NODEINFOREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace graph_server
{
template <class ContainerAllocator>
struct NodeInfoRequest_
{
  typedef NodeInfoRequest_<ContainerAllocator> Type;

  NodeInfoRequest_()
    : node_id(0)  {
    }
  NodeInfoRequest_(const ContainerAllocator& _alloc)
    : node_id(0)  {
  (void)_alloc;
    }



   typedef uint64_t _node_id_type;
  _node_id_type node_id;





  typedef boost::shared_ptr< ::graph_server::NodeInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::graph_server::NodeInfoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NodeInfoRequest_

typedef ::graph_server::NodeInfoRequest_<std::allocator<void> > NodeInfoRequest;

typedef boost::shared_ptr< ::graph_server::NodeInfoRequest > NodeInfoRequestPtr;
typedef boost::shared_ptr< ::graph_server::NodeInfoRequest const> NodeInfoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::graph_server::NodeInfoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::graph_server::NodeInfoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace graph_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::graph_server::NodeInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::graph_server::NodeInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::graph_server::NodeInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f0260e4fab416ff57152b16538097778";
  }

  static const char* value(const ::graph_server::NodeInfoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf0260e4fab416ff5ULL;
  static const uint64_t static_value2 = 0x7152b16538097778ULL;
};

template<class ContainerAllocator>
struct DataType< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "graph_server/NodeInfoRequest";
  }

  static const char* value(const ::graph_server::NodeInfoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 node_id\n\
";
  }

  static const char* value(const ::graph_server::NodeInfoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeInfoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::graph_server::NodeInfoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::graph_server::NodeInfoRequest_<ContainerAllocator>& v)
  {
    s << indent << "node_id: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.node_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GRAPH_SERVER_MESSAGE_NODEINFOREQUEST_H