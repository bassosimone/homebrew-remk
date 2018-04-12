class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v6.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v6.0.0.tar.gz"
  sha256 "964b6cfddbaf96de290e7de5e8ea2e3aae652e56a5e9b13e866a9bebcede6bb2"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
