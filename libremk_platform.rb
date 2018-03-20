class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v1.0.1"
  url "https://github.com/bassosimone/libremk_platform/archive/v1.0.1.tar.gz"
  sha256 "9bd87b89424e9d60e395f19448569e244a55c18e776a1fff32231c816ef0e154"

  depends_on "cmake"

  def install
    system "./autogen.sh" if build.head?
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
