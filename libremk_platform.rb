class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v2.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v2.0.0.tar.gz"
  sha256 "8c0c3766164660d6b38840b3dffc4688a1d2083ea420fd87418c1b4f9abe00e4"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
