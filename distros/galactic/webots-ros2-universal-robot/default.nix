
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, controller-manager, joint-state-broadcaster, joint-trajectory-controller, pythonPackages, rclpy, robot-state-publisher, rviz2, trajectory-msgs, webots-ros2-control, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2-universal-robot";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2_universal_robot/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "e870c497323071187e2e419de3b47ca3676eb0248d452eefc034f1e0ac90cc14";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs controller-manager joint-state-broadcaster joint-trajectory-controller rclpy robot-state-publisher rviz2 trajectory-msgs webots-ros2-control webots-ros2-driver ];

  meta = {
    description = ''Universal Robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
