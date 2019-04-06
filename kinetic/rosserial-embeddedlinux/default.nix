
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, catkin, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-embeddedlinux";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_embeddedlinux/0.7.7-0.tar.gz;
    sha256 = "f9d9bdc6e424e3b54c27aeaf7531e5357031c67dc2a4fa55f431b4bc38d19802";
  };

  propagatedBuildInputs = [ rosserial-msgs rospy ];
  nativeBuildInputs = [ catkin rosserial-client ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    #license = lib.licenses.BSD;
  };
}