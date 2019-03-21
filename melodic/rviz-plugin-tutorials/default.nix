
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, qt5 }:
buildRosPackage {
  pname = "ros-melodic-rviz-plugin-tutorials";
  version = "0.10.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/visualization_tutorials-release/archive/release/melodic/rviz_plugin_tutorials/0.10.3-0.tar.gz;
    sha256 = "88f1ec8a199451ff130c3c4a4375c5c82f2989e6cffec0986ce980e3f25335e0";
  };

  propagatedBuildInputs = [ rviz qt5.qtbase ];
  nativeBuildInputs = [ catkin rviz qt5.qtbase ];

  meta = {
    description = ''Tutorials showing how to write plugins for RViz.'';
    #license = lib.licenses.BSD;
  };
}