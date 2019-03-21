
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-melodic-grid-map-cv";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_cv/1.6.1-0.tar.gz;
    sha256 = "210414e554f115a4a3f7cfea79893dd64203fed6be95e45a81509e70aac4845e";
  };

  propagatedBuildInputs = [ grid-map-core filters cv-bridge ];
  nativeBuildInputs = [ grid-map-core filters cv-bridge catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    #license = lib.licenses.BSD;
  };
}