
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, ffmpeg, gtest }:
buildRosPackage {
  pname = "ros-melodic-h264-encoder-core";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/h264_encoder_core-release/archive/release/melodic/h264_encoder_core/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "bdcf55d6442de34b56bb1e23bbeb4d12f29aaa46a25ac2899ef38b326fc03e6a";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ffmpeg ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Common base code for ROS1/ROS2 H264 encoder node'';
    license = with lib.licenses; [ lgpl21 ];
  };
}
