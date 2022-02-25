
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-control, franka-description, franka-example-controllers, franka-gazebo, franka-gripper, franka-hw, franka-msgs, franka-visualization, panda-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-franka-ros";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_ros/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "97aafc59d74299b9971bec7496a4e597d9839fd6dd47b6fa858ea5d1e985dfdf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-control franka-description franka-example-controllers franka-gazebo franka-gripper franka-hw franka-msgs franka-visualization panda-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_ros is a metapackage for all Franka Emika ROS packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
