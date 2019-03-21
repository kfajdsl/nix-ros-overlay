
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-top";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_top-release/archive/release/melodic/rqt_top/0.4.8-0.tar.gz;
    sha256 = "06a64dcb66e010ec7fa6e474dcd0b50efac71516ecb6a247c38652d309ee7c8a";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.psutil rospy rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    #license = lib.licenses.BSD;
  };
}