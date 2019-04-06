
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_msgs/0.4.1-0.tar.gz;
    sha256 = "adc3d35f7f4cbae814fe5f38956b64b1753225b579e4474cbd919a169cdbe8cb";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Common messages used throughout dynamixel_motor stack.'';
    #license = lib.licenses.BSD;
  };
}