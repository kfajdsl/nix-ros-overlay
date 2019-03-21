
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-srvs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_srvs/0.6.10-0.tar.gz;
    sha256 = "1088b5dbe8ab9875e5f02cc74208dfa61f3d7f208c83b3cfe4be94c909c7e880";
  };

  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin message-generation ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    #license = lib.licenses.Apache 2.0;
  };
}