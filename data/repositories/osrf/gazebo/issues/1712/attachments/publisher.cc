/*
 * Copyright 2012 Open Source Robotics Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/

#include <iostream>
#include <sstream>
#include <stdlib.h> 

#include "gazebo/transport/Node.hh"
#include "gazebo/gui/GuiEvents.hh"
#include "gazebo/common/MouseEvent.hh"
#include "gazebo/rendering/UserCamera.hh"
#include "gazebo/rendering/Light.hh"
#include "gazebo/rendering/Scene.hh"

#include "gazebo/gui/LightMaker.hh"

#include <gazebo/gazebo.hh>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include <gazebo/math/gzmath.hh>
#include <iostream>

using namespace gazebo;
using namespace gui;

int main(int _argc, char **_argv)
{
    gazebo::setupClient(_argc, _argv);
// Create our node for communication
    gazebo::transport::NodePtr node(new gazebo::transport::Node());
    node->Init();
// Publish to a Gazebo topic
    gazebo::transport::PublisherPtr pub = node->Advertise<msgs::Light>("~/light");
// Wait for a subscriber to connect
    pub->WaitForConnection();
// Throttle Publication
    msgs::Light msg;
    msg.set_attenuation_constant(0.5);
    msg.set_attenuation_linear(0.01);
    msg.set_attenuation_quadratic(0.001);
    msg.set_range(10000);
    msg.set_type(gazebo::msgs::Light_LightType(3));
    msg.set_name("light");
    msgs::Set(msg.mutable_diffuse(), common::Color(1, 1, 1, 1));
    msgs::Set(msg.mutable_specular(), common::Color(1, 1, 1, 1));
    msgs::Set(msg.mutable_pose(), gazebo::math::Pose(0, 40, 20, 0.1, 0.1, 0));
    msgs::Set(msg.mutable_direction(), gazebo::math::Vector3(0.2, 0.2, -1));
    pub->Publish(msg);
    gazebo::shutdown();
}

