cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
set (CMAKE_AUTOMOC ON)

# Find Gazebo
find_package(gazebo REQUIRED)
find_package (Qt5Widgets REQUIRED)
find_package (Qt5Core REQUIRED)
find_package(Protobuf REQUIRED)

include_directories(SYSTEM ${GAZEBO_INCLUDE_DIRS} ${Qt5Core_INCLUDE_DIRS} ./include)
link_directories(${GAZEBO_LIBRARY_DIRS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GAZEBO_CXX_FLAGS}")


add_library(GUIBugPlugin SHARED ${headers_MOC} GUIBugPlugin.cc)
target_link_libraries(GUIBugPlugin ${GAZEBO_LIBRARIES}
    # ${OGRE_LIBRARIES}
    # ${OGRE-Terrain_LIBRARIES}
    ${Qt5Core_LIBRARIES}
    ${Qt5Widgets_LIBRARIES}
    ${PROTOBUF_LIBRARIES})