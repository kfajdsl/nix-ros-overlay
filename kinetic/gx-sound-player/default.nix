
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gx-sound-msgs, catkin, vorbis-tools, rospy }:
buildRosPackage {
  pname = "ros-kinetic-gx-sound-player";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/groove-x/gx_sound-release/archive/release/kinetic/gx_sound_player/0.2.2-0.tar.gz;
    sha256 = "564ce007cb5481ca0c85addfffa092708e40e513c73627422e49782a945259d5";
  };

  propagatedBuildInputs = [ gx-sound-msgs rospy vorbis-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gx_sound_player package'';
    #license = lib.licenses.BSD;
  };
}