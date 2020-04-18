#include <map>
#include "gazebo/gazebo.hh"
#include "gazebo/common/common.hh"
#include "gazebo/physics/physics.hh"

namespace gazebo {

class FixedWorldJoints : public ModelPlugin {
  public:

    physics::ModelPtr m_model;

  void Load(physics::ModelPtr model, sdf::ElementPtr sdf) {
    m_model = model;
    gzmsg << "FixedWorldJoints::Load" << std::endl;
  }

  void Init() {
    gzmsg << "Detach world joint" << std::endl;
    m_model->RemoveJoint("fixed_joint");
  }
};

// Register this plugin with the simulator
GZ_REGISTER_MODEL_PLUGIN(FixedWorldJoints)
}
