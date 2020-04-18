/*
 * Copyright (C) 2018 Open Source Robotics Foundation
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

#include "gazebo/test/ServerFixture.hh"
using namespace gazebo;

/////////////////////////////////////////////////
class BulletSetPositionTest : public ServerFixture,
      public ::testing::WithParamInterface<const char *>
{
};

/////////////////////////////////////////////////
TEST_F(BulletSetPositionTest , TestAxis)
{
  // Load the test world
  this->Load("worlds/test/issue_2505_revolute_joint_SetAxis.world",
              true, "bullet", {});
  physics::WorldPtr world = physics::get_world("default");

  physics::PhysicsEnginePtr physics = world->Physics();
  physics::ModelPtr model = world->ModelByName("revolute_model");
  physics::JointPtr joint = model->GetJoint("revolute_joint");

  while (true)
  {
    for (const double angleInDegrees : { 0, 30, 90, 117, -64 })
    {
      const double angle = angleInDegrees * IGN_PI / 180.0;
      std::cout << "Angle: " << angleInDegrees << std::endl;
      joint->SetPosition(0, angle);
      world->Step(1);
      common::Time::Sleep(2);
    }
  }
}

/////////////////////////////////////////////////
int main(int argc, char **argv)
{
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
