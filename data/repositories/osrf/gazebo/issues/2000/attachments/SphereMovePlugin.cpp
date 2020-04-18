#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>

class SphereMovePlugin : public gazebo::ModelPlugin {
public:
    SphereMovePlugin() = default;

    void Load(gazebo::physics::ModelPtr parent, sdf::ElementPtr sdf) override {
        // Store the pointer to the model
        // m_model = parent;

        gazebo::common::PoseAnimationPtr anim(
            new gazebo::common::PoseAnimation("sphere_anim", 20.0, true));

        gazebo::common::PoseKeyFrame *key;

        key = anim->CreateKeyFrame(0);
        key->Translation(ignition::math::Vector3d(2.5, 0, 0.64));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        key = anim->CreateKeyFrame(10.0);
        key->Translation(ignition::math::Vector3d(0.5, 0, 0.64));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        key = anim->CreateKeyFrame(20.0);
        key->Translation(ignition::math::Vector3d(2.5, 0, 0.64));
        key->Rotation(ignition::math::Quaterniond(0, 0, 0));

        parent->SetAnimation(anim);
    }
};

// Register this plugin with the simulator
GZ_REGISTER_MODEL_PLUGIN(SphereMovePlugin)
