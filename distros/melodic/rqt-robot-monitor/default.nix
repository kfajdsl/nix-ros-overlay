
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python-qt-binding, pythonPackages, qt-gui, qt-gui-py-common, rospy, rqt-bag, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-monitor";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_monitor-release/archive/release/melodic/rqt_robot_monitor/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "e77c163447c085b75b36d89c0f8a06b52f44efa1ba470c5cb2e0aef5a03adb6b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding pythonPackages.rospkg qt-gui qt-gui-py-common rospy rqt-bag rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''rqt_robot_monitor displays diagnostics_agg topics messages that
   are published by <a href="http://www.ros.org/wiki/diagnostic_aggregator">diagnostic_aggregator</a>.
   rqt_robot_monitor is a direct port to rqt of
   <a href="http://www.ros.org/wiki/robot_monitor">robot_monitor</a>. All
   diagnostics are fall into one of three tree panes depending on the status of
   diagnostics (normal, warning, error/stale). Status are shown in trees to
   represent their hierarchy. Worse status dominates the higher level status.<br/>
   <ul>
    Ex. 'Computer' category has 3 sub devices. 2 are green but 1 is error. Then
        'Computer' becomes error.
   </ul>
  You can look at the detail of each status by double-clicking the tree nodes.<br/>

  Currently re-usable API to other pkgs are not explicitly provided.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
