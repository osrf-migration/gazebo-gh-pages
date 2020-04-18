#include <string>
#include <sstream>

#include <gazebo/msgs/msgs.hh>
#include <gazebo/common/Plugin.hh>
#include <gazebo/gui/GuiPlugin.hh>
#include <gazebo/transport/transport.hh>

namespace gazebo
{
    class GAZEBO_VISIBLE GUIBugPlugin : public GUIPlugin
    {
        Q_OBJECT

        public: GUIBugPlugin();

        public: virtual ~GUIBugPlugin();
    };
}