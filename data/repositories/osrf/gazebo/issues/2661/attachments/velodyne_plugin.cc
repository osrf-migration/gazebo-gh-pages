//#ifndef _VELODYNE_PLUGIN_HH_
//#define _VELODYNE_PLUGIN_HH_


#include <iostream>
#include <string>
#include <ignition/transport.hh>

#include "msgs/stringmsg.pb.h"
#include "msgs/vector3d.pb.h"

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include <gazebo/math/Vector3.hh>


void cb(const ignition::msgs::Vector3d  &_msg)
{
  std::cerr << "Msg: " << _msg.DebugString() << std::endl << std::endl;
  ignition::math::Vector3d t= gazebo::msgs::ConvertIgn(_msg);
  std::cerr << t.X();
}

//////////////////////////////////////////////////
int main(int argc, char **argv)
{
  ignition::transport::Node node;
  std::string topic = "/gazebo/default/my_velodyne/vel_cmd";
  std::cerr <<topic;
  // Subscribe to a topic by registering a callback.
  if (!node.Subscribe(topic, cb))
  {
    std::cerr << "Error subscribing to topic [" << topic << "]" << std::endl;
    return -1;
  }

  // Zzzzzz.
  ignition::transport::waitForShutdown();

  return 0;
}

//#endif


