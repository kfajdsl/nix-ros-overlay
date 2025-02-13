
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-srvs, diagnostic-msgs, diagnostic-updater, python3Packages, roscpp, rospy, socketcan-interface, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-bms-driver";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_bms_driver/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "bf064a4a8de97141d4004ed9ca9e7493fe04f9a04140e608d2a29e1cec42b874";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-srvs diagnostic-msgs diagnostic-updater python3Packages.numpy roscpp rospy socketcan-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
