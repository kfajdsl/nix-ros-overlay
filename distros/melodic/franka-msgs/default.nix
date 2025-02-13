
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-franka-msgs";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_msgs/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "b52036fb24564edd03e9a5e7ae491592e41cc63a0ec593d264922e4e402910b9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_msgs provides messages specific to Franka Emika research robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
