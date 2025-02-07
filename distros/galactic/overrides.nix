# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  gazebo = self.gazebo_11;

  iceoryx-posh = patchVendorGit rosSuper.iceoryx-posh {
    url = "https://github.com/skystrife/cpptoml.git";
    file = "cmake/cpptoml/cpptoml.cmake.in";
    fetchgitArgs = {
      rev = "v0.1.1";
      sha256 = "0gxzzi4xbjszzlvmzaniayrd190kag1pmkn1h384s80cvqphbr00";
    };
  };

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.7.20210816.tar.gz";
    sha256 = "sha256-00FyzWdp4hi6aYUNcn1326ddDftYowB803cMII7h3no=";
  };

  libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml/archive/refs/tags/0.2.5.zip";
    sha256 = "1j6br21rc379wizvclz46s3kih0kfii6m923p4x4s37wdnm5nq0l";
  };

  pybind11-vendor = patchVendorUrl rosSuper.pybind11-vendor {
    url = "https://github.com/pybind/pybind11/archive/v2.5.0.tar.gz";
    sha256 = "0145vj9hrhb9qjp6jfvw0d1qc31lbb103xzxscr0yms0asv4sl4p";
  };

  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix finding PyQt5 SIP bindings with SIP >=5
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/d97ecb27e4460633f97b816e3217b032a93c5da0.patch";
        sha256 = "08sdsm879bq349kq2k3wbs7p3l2syzrxdw3cgdvxfj2inkhdbf9f";
      })
    ] ++ patches;
  });

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
