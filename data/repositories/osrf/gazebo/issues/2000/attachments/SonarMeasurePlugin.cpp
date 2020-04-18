#include <string>

#include <gazebo/gazebo.hh>
#include <gazebo/common/common.hh>
#include <gazebo/physics/physics.hh>
#include <plugins/SonarPlugin.hh>

class SonarMeasurePlugin : public gazebo::SonarPlugin {
public:
    SonarMeasurePlugin() = default;

    void Load(gazebo::sensors::SensorPtr parent, sdf::ElementPtr sdf) override {
        gazebo::SonarPlugin::Load(parent, sdf);
    }

protected:
    void OnUpdate(gazebo::msgs::SonarStamped msg) override {
        std::vector<double> contact_point = {msg.sonar().contact().x(), msg.sonar().contact().y(),
                                             msg.sonar().contact().z()};

        std::vector<double> position_vec = {msg.sonar().world_pose().position().x(),
                                            msg.sonar().world_pose().position().y(),
                                            msg.sonar().world_pose().position().z()};

        gzmsg << "world_pose: " << position_vec[0] << ", " << position_vec[1] << ", "
              << position_vec[2] << std::endl;
        gzmsg << "contact_point: " << contact_point[0] << ", " << contact_point[1] << ", "
              << contact_point[2] << std::endl;
        gzmsg << "range: " << msg.sonar().range() << std::endl;
    }
};

// Register this plugin with the simulator
GZ_REGISTER_SENSOR_PLUGIN(SonarMeasurePlugin)
