class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v2.1.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v2.1.0.tar.gz"
  sha256 "211ea96de1fe25205964d2bc9a976718145f8341f5da9f62ba0f843a4327dfff"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
