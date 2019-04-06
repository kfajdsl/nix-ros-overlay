
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pcl, sensor-msgs, catkin, roscpp, octomap-msgs, nav-msgs, octomap, octomap-ros, nodelet, pcl-ros, std-msgs, dynamic-reconfigure, visualization-msgs, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-octomap-server";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/octomap_mapping-release/archive/release/kinetic/octomap_server/0.6.1-0.tar.gz;
    sha256 = "75b3ad03bcef61e27fb9d19c5ad1efb1ffccb8fc2353c355e58a31b9eb3802b0";
  };

  propagatedBuildInputs = [ std-srvs pcl sensor-msgs roscpp octomap-msgs nav-msgs octomap-ros octomap visualization-msgs pcl-ros std-msgs dynamic-reconfigure nodelet pcl-conversions ];
  nativeBuildInputs = [ std-srvs pcl sensor-msgs catkin roscpp octomap-msgs nav-msgs octomap-ros octomap visualization-msgs pcl-ros std-msgs dynamic-reconfigure nodelet pcl-conversions ];

  meta = {
    description = ''octomap_server loads a 3D map (as Octree-based OctoMap) and distributes it to other nodes in a compact binary format. It also allows to incrementally build 3D OctoMaps, and provides map saving in the node octomap_saver.'';
    #license = lib.licenses.BSD;
  };
}