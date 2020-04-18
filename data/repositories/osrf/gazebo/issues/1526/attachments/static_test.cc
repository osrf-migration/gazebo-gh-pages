#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>


namespace gazebo
{
  class StaticTest : public ModelPlugin
  {
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      std::cout << "*Before* IsStatic? : " << _parent->IsStatic() << std::endl;

      _parent->SetStatic(true);

      std::cout << "*After* IsSatic? : " << _parent->IsStatic() << std::endl;


      // Store the pointer to the model
      this->model = _parent;

      // Listen to the update event. This event is broadcast every
      // simulation iteration.
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(
          boost::bind(&StaticTest::OnUpdate, this, _1));
    }

    // Called by the world update start event
    public: void OnUpdate(const common::UpdateInfo & /*_info*/)
    {

      std::cout << "*Before* IsStatic? : " << this->model->IsStatic() << std::endl;

      this->model->SetStatic(true);

      std::cout << "*After* IsSatic? : " << this->model->IsStatic() << std::endl;

    }

    // Pointer to the model
    private: physics::ModelPtr model;

    // Pointer to the update event connection
    private: event::ConnectionPtr updateConnection;
  };

  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(StaticTest)
}
