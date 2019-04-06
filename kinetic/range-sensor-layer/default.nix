
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, sensor-msgs, catkin, angles, rospy, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-range-sensor-layer";
  version = "0.3.1-r1";

  src = fetchurl {
    url = https://github.com/wu-robotics/navigation_layers_release/archive/release/kinetic/range_sensor_layer/0.3.1-1.tar.gz;
    sha256 = "d87283903b14db4a8dd4481dc3e105cefd130f1cb500a632d2f2ec271331411d";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib rospy angles sensor-msgs roscpp ];
  nativeBuildInputs = [ costmap-2d catkin pluginlib rospy angles sensor-msgs roscpp ];

  meta = {
    description = ''Navigation Layer for Range sensors like sonar and IR'';
    #license = lib.licenses.BSD;
  };
}