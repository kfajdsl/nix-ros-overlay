
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, std-msgs, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-power-monitor";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/kinetic/power_monitor/1.1.7-0.tar.gz;
    sha256 = "69cfcca222a6e36336a08c9da45b0c58451c9361a8615e7e3e2eb801672339d0";
  };

  propagatedBuildInputs = [ std-msgs pr2-msgs roscpp dynamic-reconfigure ];
  nativeBuildInputs = [ catkin dynamic-reconfigure std-msgs pr2-msgs roscpp ];

  meta = {
    description = ''The power_monitor collects messages from the ocean_battery_server and
     the pr2_power_board, and publishes a summary of their data in a
     friendlier message format.'';
    #license = lib.licenses.BSD;
  };
}