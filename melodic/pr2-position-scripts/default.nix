
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, catkin, actionlib, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-pr2-position-scripts";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_position_scripts/0.6.1-0.tar.gz;
    sha256 = "8a6dddf6474456caf8bc7efdec66febbabfc1c4f5c4ca533a0520dcc5b6b660c";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs tf actionlib rospy ];
  nativeBuildInputs = [ pr2-controllers-msgs actionlib rospy catkin tf ];

  meta = {
    description = ''This package contains a number of scripts to set various components of the PR2. They are used in the apps to improve usablity.'';
    #license = lib.licenses.BSD;
  };
}