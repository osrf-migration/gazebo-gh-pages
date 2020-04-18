#include <boost/bind.hpp>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <stdio.h>

namespace gazebo
{
  class ModelPush : public ModelPlugin
  {
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      // Store the pointer to the model
      this->model = _parent;

      // Listen to the update event. This event is broadcast every
      // simulation iteration.
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          boost::bind(&ModelPush::OnUpdate, this, _1));
    }

    // Called by the world update start event
    public: void OnUpdate(const common::UpdateInfo & /*_info*/)
    {
      // Apply a small linear velocity to the model.
      printf("Model boundingbox zlength: %f\n", this->model->GetBoundingBox().GetZLength());
      printf("model min x,y,z: %f,%f,%f", this->model->GetBoundingBox().min.x, this->model->GetBoundingBox().min.y, this->model->GetBoundingBox().min.z);
      printf("; model max x,y,z: %f,%f,%f\n", this->model->GetBoundingBox().max.x, this->model->GetBoundingBox().max.y, this->model->GetBoundingBox().max.z);
      //this->model->SetLinearVel(math::Vector3(.03, 0, 0));
      printf("Mug_cap_collision boundingbox zlength: %f\n", this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().GetZLength());
      printf("cap min x,y,z: %f,%f,%f", this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().min.x, this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().min.y, this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().min.z);
      printf("; cap max x,y,z: %f,%f,%f\n", this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().max.x, this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().max.y, this->model->GetChildCollision("mug_cap_collision")->GetBoundingBox().max.z);
      printf("Mug_collision boundingbox zlength: %f\n", this->model->GetChildCollision("mug_collision")->GetBoundingBox().GetZLength());
      printf("body min x,y,z: %f,%f,%f", this->model->GetChildCollision("mug_collision")->GetBoundingBox().min.x, this->model->GetChildCollision("mug_collision")->GetBoundingBox().min.y, this->model->GetChildCollision("mug_collision")->GetBoundingBox().min.z);
      printf("; body max x,y,z: %f,%f,%f\n", this->model->GetChildCollision("mug_collision")->GetBoundingBox().max.x, this->model->GetChildCollision("mug_collision")->GetBoundingBox().max.y, this->model->GetChildCollision("mug_collision")->GetBoundingBox().max.z);
    }

    // Pointer to the model
    private: physics::ModelPtr model;

    // Pointer to the update event connection
    private: event::ConnectionPtr updateConnection;
  };

  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(ModelPush)
}
