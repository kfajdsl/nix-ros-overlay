
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, qt5, rviz-common }:
buildRosPackage {
  pname = "ros-foxy-rviz-visual-testing-framework";
  version = "8.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_visual_testing_framework/8.2.6-1.tar.gz";
    name = "8.2.6-1.tar.gz";
    sha256 = "0ddb0418b80e5407c09567d5e19ff865a8b57f53dd72adc388001134cbef16d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ament-cmake-gtest rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D testing framework for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
