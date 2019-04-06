
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-image-geometry";
  version = "1.12.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/kinetic/image_geometry/1.12.8-0.tar.gz;
    sha256 = "ad1a63c29af20a0de51e2759ae1c3e075e168945ae1dcc3d55ef77284ccc7904";
  };

  propagatedBuildInputs = [ sensor-msgs opencv3 ];
  nativeBuildInputs = [ sensor-msgs catkin opencv3 ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    #license = lib.licenses.BSD;
  };
}