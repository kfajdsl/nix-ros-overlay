
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-realsense2-camera-msgs";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/galactic/realsense2_camera_msgs/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "a3edf50c8fc2fd0a4b18614a49bd7b94dab94294fcec0d13ac5fe931025ed346";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing realsense camera messages definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
