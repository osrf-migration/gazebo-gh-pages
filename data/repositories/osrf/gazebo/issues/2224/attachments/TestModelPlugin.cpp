#include <gazebo/gazebo.hh>
#include <functional>
#include <iostream>

namespace gazebo
{

class TestModelPlugin : public ModelPlugin
{
  public:
    void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
    {
      updateConnection = event::Events::ConnectWorldUpdateBegin(
          std::bind(&TestModelPlugin::OnUpdate, this));
    }

  protected:
    event::ConnectionPtr updateConnection;

    void OnUpdate()
    {
      std::cerr << "World update begin!" << std::endl;
      std::string input;
      std::cin >> input;
    }
};

GZ_REGISTER_MODEL_PLUGIN(TestModelPlugin);

}
