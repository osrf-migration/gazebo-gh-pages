// gazebo
#include <gazebo/physics/Model.hh>
#include <gazebo/common/Events.hh>
#include <gazebo/physics/World.hh>

// ignition
#include <ignition/math/Pose3.hh>
#include <ignition/math/Vector3.hh>
#include <ignition/math/Quaternion.hh>

// boost
#include <boost/bind.hpp>

// std
#include <string>
#include <iostream>

#include "ModelPosePublisher.hh"

GZ_REGISTER_MODEL_PLUGIN(gazebo::ModelPosePublisher)

namespace gazebo {

void ModelPosePublisher::Load(gazebo::physics::ModelPtr _parent, sdf::ElementPtr _sdf)
{
    // Store pointer to the model
    m_model = _parent;
    
    // Clear last update time
    m_lastUpdateTime = gazebo::common::Time(0.0);

    // Listen to the update event
    auto worldUpdateBind = boost::bind(&ModelPosePublisher::OnWorldUpdate, this);
    m_worldUpdateConnection = gazebo::event::Events::ConnectWorldUpdateBegin(worldUpdateBind);
}

void ModelPosePublisher::OnWorldUpdate()
{    
    // Get current time
#if GAZEBO_MAJOR_VERSION >= 8
    gazebo::common::Time currentTime = m_model->GetWorld()->SimTime();
#else
    gazebo::common::Time currentTime = m_model->GetWorld()->GetSimTime();
#endif

    // Default period of 1.0 s
    double period = 1.0;
    
    // Check if an update period is elapsed
    if(currentTime - m_lastUpdateTime >= period) {
	
	// Store current time for next update
	m_lastUpdateTime = currentTime;

	// Get the current pose of the model    
#if GAZEBO_MAJOR_VERSION >= 8
	ignition::math::Pose3d curPose = m_model->WorldPose();
#else
	gazebo::math::Pose curPoseGazebo = m_model->GetWorldPose();
	// Convert to Ignition so that the same interface
	// can be used in the rest of the function
	ignition::math::Pose3d curPose = curPoseGazebo.Ign();
#endif

	// Get the positional and rotational parts
	ignition::math::Vector3d pos = curPose.Pos();
	ignition::math::Quaterniond rot = curPose.Rot();

	// Print out the current position
	std::cout << "Model name: " << m_model->GetName() << std::endl
	          << "x: " << pos.X() << std::endl
		  << "y: " << pos.Y() << std::endl
		  << "z: " << pos.Z() << std::endl
		  << std::endl;
    }
}

}
