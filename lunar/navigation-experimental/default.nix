
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pose-base-controller, catkin, sbpl-lattice-planner, pose-follower, goal-passer, twist-recovery, assisted-teleop, sbpl-recovery }:
buildRosPackage {
  pname = "ros-lunar-navigation-experimental";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/navigation_experimental/0.2.1-0.tar.gz;
    sha256 = "af41fdde535479a63551a96736c9ba06cc934b8312b13cbd25fbe29d9be05ccf";
  };

  propagatedBuildInputs = [ assisted-teleop sbpl-lattice-planner pose-follower goal-passer twist-recovery pose-base-controller sbpl-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of navigation plugins and tools: Various recovery behaviors,
    local and global planner plugins for move_base, a teleop filter for
    obstacle avoidance, a simple control-based move_base replacement
    etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}