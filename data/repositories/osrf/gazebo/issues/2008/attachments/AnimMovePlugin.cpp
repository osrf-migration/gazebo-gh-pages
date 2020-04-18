#include <ignition/math/Vector3.hh>
#include <ignition/math/Quaternion.hh>

#include "gazebo/common/CommonTypes.hh"
#include "gazebo/common/Animation.hh"
#include "gazebo/common/KeyFrame.hh"
#include "gazebo/physics/Model.hh"
#include "gazebo/gazebo.hh"

namespace gazebo {
class AnimMovePlugin : public ModelPlugin {
public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/) {
        gazebo::common::PoseAnimationPtr anim(
            new gazebo::common::PoseAnimation("test", 10.0, true));

        gazebo::common::PoseKeyFrame *key;

        key = anim->CreateKeyFrame(0);
        key->Translation(ignition::math::Vector3d(0, 1, 0.5));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        key = anim->CreateKeyFrame(5.0);
        key->Translation(ignition::math::Vector3d(2, 1, 0.5));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        key = anim->CreateKeyFrame(10.0);
        key->Translation(ignition::math::Vector3d(0, 1, 0.5));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        _parent->SetAnimation(anim);
    }
};

// Register this plugin with the simulator
GZ_REGISTER_MODEL_PLUGIN(AnimMovePlugin)
}
