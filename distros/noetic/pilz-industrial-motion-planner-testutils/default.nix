
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-commander, moveit-core, moveit-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-planner-testutils";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/pilz_industrial_motion_planner_testutils/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "2c735dd904725db7a446855546c12cb4a6c08eccf463016127c82b564d92158f";
  };

  buildType = "catkin";
  buildInputs = [ tf2-eigen ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
