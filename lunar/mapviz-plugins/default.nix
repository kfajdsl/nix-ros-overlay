
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-route-util, swri-yaml-util, actionlib, tf, stereo-msgs, swri-transform-util, marti-visualization-msgs, image-transport, gps-common, libqt-dev, libqt-opengl, swri-math-util, mapviz, catkin, move-base-msgs, nav-msgs, qt-qmake, std-msgs, roscpp, visualization-msgs, pluginlib, sensor-msgs, libqt-core, marti-nav-msgs, marti-common-msgs, libqt-opengl-dev, swri-image-util, map-msgs }:
buildRosPackage {
  pname = "ros-lunar-mapviz-plugins";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/lunar/mapviz_plugins/1.1.0-0.tar.gz;
    sha256 = "28931782f1be8828ec06f1a2fbe3907ac59e772c59487d32423286e131374300";
  };

  buildInputs = [ cv-bridge swri-route-util swri-yaml-util actionlib tf swri-transform-util stereo-msgs marti-visualization-msgs image-transport gps-common libqt-dev swri-math-util mapviz move-base-msgs nav-msgs std-msgs roscpp visualization-msgs pluginlib sensor-msgs marti-nav-msgs marti-common-msgs libqt-opengl-dev swri-image-util map-msgs ];
  propagatedBuildInputs = [ cv-bridge swri-route-util swri-yaml-util actionlib tf swri-transform-util stereo-msgs marti-visualization-msgs image-transport gps-common libqt-opengl swri-math-util mapviz move-base-msgs nav-msgs std-msgs roscpp visualization-msgs pluginlib sensor-msgs libqt-core marti-nav-msgs marti-common-msgs swri-image-util map-msgs ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}