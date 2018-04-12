class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v5.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v5.0.0.tar.gz"
  sha256 "92c1ce20e56f6249dd92ef942ef7517fb40edba0408c2f8970900c970603e6fe"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
