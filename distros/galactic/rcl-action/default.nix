
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-rcl-action";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/galactic/rcl_action/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "e4dbd622bdcf9b6e8626b55f232134b8433034f380cb3bfa7d9ea794cd0c7dbb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
