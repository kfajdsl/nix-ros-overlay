
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, catkin, tf2-ros, tf2, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-turtle-tf2";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry_tutorials-release/archive/release/lunar/turtle_tf2/0.2.2-0.tar.gz;
    sha256 = "8aaeb265ec96b205f8c360cfefd2f4a2690fceb892f9128b3a1b95dab9ffee6c";
  };

  buildInputs = [ turtlesim tf2-ros tf2 rospy std-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ turtlesim tf2-ros tf2 rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtle_tf2 demonstrates how to write a tf2 broadcaster and listener with the turtlesim. The tutle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}