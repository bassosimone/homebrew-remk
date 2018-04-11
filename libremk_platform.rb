class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v4.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v4.0.0.tar.gz"
  sha256 "65ae9b1070303177c5408e74acc8c3f1e0a286912f65f17c539d2b3caf4e95c6"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
