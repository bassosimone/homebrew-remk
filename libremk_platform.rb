class LibremkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v6.1.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v6.1.0.tar.gz"
  sha256 "79a30844e5fedbb8612010b359d4a3698ccd9660a9f3c94d191854eb6f26e003"

  depends_on "cmake"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
