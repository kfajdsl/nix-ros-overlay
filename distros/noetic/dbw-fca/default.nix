
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-fca-can, dbw-fca-description, dbw-fca-joystick-demo, dbw-fca-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-fca";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/dbw_fca/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1b080248abc6b54857d218774790c0617217cf3654499842616060435677d21c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-fca-can dbw-fca-description dbw-fca-joystick-demo dbw-fca-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
