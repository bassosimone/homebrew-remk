class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v7.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v7.0.0.tar.gz"
  sha256 "67e52b3ec96c3d26a13288029cb85e6e2f05c85c5de2623214003f36dae2d8b6"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
