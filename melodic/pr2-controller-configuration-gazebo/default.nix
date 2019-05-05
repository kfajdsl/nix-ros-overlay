
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-head-action, catkin, gazeboSimulator, pr2-gripper-action, single-joint-position-action, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-pr2-controller-configuration-gazebo";
  version = "2.0.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_controller_configuration_gazebo/2.0.14-0.tar.gz;
    sha256 = "5c439cea522e3fdbd04cb520d3adb886513eff5a52619491b6a2f4e3d84f38fb";
  };

  propagatedBuildInputs = [ single-joint-position-action pr2-controller-manager pr2-head-action gazeboSimulator.gazebo pr2-gripper-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A copy of the pr2_controller_configuration package, for use in 
    the PR2 simulator.  We maintain two copies to allow for controller
    gains to be set differently between hardware and simulation.'';
    #license = lib.licenses.BSD;
  };
}