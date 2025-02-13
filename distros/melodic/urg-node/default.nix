
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, laser-proc, message-generation, message-runtime, nodelet, rosconsole, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, std-srvs, tf, urg-c }:
buildRosPackage {
  pname = "ros-melodic-urg-node";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_node-release/archive/release/melodic/urg_node/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "4c09ff097705c9302cbf155d4b914f0512a6483c3e0c4ff6bfe3ec90b3870674";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure laser-proc message-generation message-runtime nodelet rosconsole roscpp sensor-msgs std-msgs std-srvs tf urg-c ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urg_node'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
