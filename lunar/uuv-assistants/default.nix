
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, sensor-msgs, catkin, pythonPackages, nav-msgs, rosgraph, rostopic, visualization-msgs, rospy, topic-tools, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-assistants";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_assistants/0.6.10-0.tar.gz;
    sha256 = "333f1c7b2bf99d74e8cf570be6684e1366d7b189ec783c4f0b78d60bd7824fe4";
  };

  buildInputs = [ tf sensor-msgs nav-msgs topic-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs sensor-msgs roscpp nav-msgs rosgraph rostopic visualization-msgs rospy topic-tools tf gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}