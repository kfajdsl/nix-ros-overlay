
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, geometry-msgs, hri-msgs, rosconsole, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-hri";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/libhri-release/archive/release/noetic/hri/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6fb681ec7fded935f81ad6d621fce9dc1c2bea37a3e14cccb98b31f612e3184d";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs hri-msgs rosconsole roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper library around the ROS4HRI ROS topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
