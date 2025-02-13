
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, interactive-marker-twist-server, joint-state-controller, joy, robot-localization, roslaunch, teleop-twist-joy, topic-tools, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-jackal-control";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_control/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "1b9b235a034db914f87e24fbc7c2f1380e0d582992d5e37a8e4d573c8eaea198";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller interactive-marker-twist-server joint-state-controller joy robot-localization teleop-twist-joy topic-tools twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controllers for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
