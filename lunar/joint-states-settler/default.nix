
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, catkin, settlerlib, actionlib, roscpp-serialization, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-joint-states-settler";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/joint_states_settler/0.10.14-0.tar.gz;
    sha256 = "dc1ba79263d4fa71cfbbe3fd8347380f17010ba4954c0daf86ad1d5ba32fa026";
  };

  buildInputs = [ rosconsole actionlib-msgs settlerlib actionlib roscpp-serialization std-msgs roscpp ];
  propagatedBuildInputs = [ rosconsole actionlib-msgs settlerlib actionlib roscpp-serialization std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a node that reports how long a subset of joints has been
     settled. That is, it calculates how long a set of joints has remained
     within a specified threshold. This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}