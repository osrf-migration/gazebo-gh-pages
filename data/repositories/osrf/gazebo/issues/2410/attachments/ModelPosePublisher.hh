#ifndef MODELPOSEPUBLISHER_HH
#define MODELPOSEPUBLISHER_HH

// gazebo
#include <gazebo/common/Plugin.hh>

namespace gazebo
{
    class ModelPosePublisher : public ModelPlugin
    {
    public:
	/**
	 * Store pointer to the model, reset the time of the last update and
	 * connect to the World update event of Gazebo.
	 */	
	void Load(gazebo::physics::ModelPtr, sdf::ElementPtr);
	
    private:
	/**
	 * Pointer to the model where the plugin is inserted
	 */
	gazebo::physics::ModelPtr m_model;

	/**
	 * Connection to the World update event of Gazebo
	 */
	gazebo::event::ConnectionPtr m_worldUpdateConnection;

	/**
	 * Time of the last update of the plugin
	 */
	gazebo::common::Time m_lastUpdateTime;
		
	/**
	 * Update period of the plugin
	 */
	double m_period;

	/**
	 * Check if a period is elapsed since last update 
	 * and in case calls the method `PublishTransform`.
	 */	
	void OnWorldUpdate();
    };
}
#endif
