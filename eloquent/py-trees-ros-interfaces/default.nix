
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, diagnostic-msgs, rosidl-default-runtime, ament-lint-common, ament-cmake, unique-identifier-msgs, rosidl-default-generators, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-py-trees-ros-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros_interfaces-release/archive/release/eloquent/py_trees_ros_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "12e2b9de35639e062c351c093b19cf92d92ea16651775a374430679c55311fe8";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs geometry-msgs unique-identifier-msgs rosidl-default-generators action-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs rosidl-default-runtime unique-identifier-msgs action-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces used by py_trees_ros and py_trees_ros_tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}