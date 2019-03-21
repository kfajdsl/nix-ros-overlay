
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-nerian-stereo";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_stereo-release/archive/release/melodic/nerian_stereo/3.3.2-0.tar.gz;
    sha256 = "cab332138682cb2a2fb8de01086a05bf0c8e7a81c2ad1f169e7b5304968539ca";
  };

  propagatedBuildInputs = [ cv-bridge boost curl message-runtime std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ message-generation catkin boost std-msgs sensor-msgs cv-bridge roscpp ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision Technologies'';
    #license = lib.licenses.MIT;
  };
}