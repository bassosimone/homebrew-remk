class LibRemkPlatform < Formula
  desc "Really Experimental MK platform"
  homepage "https://measurement-kit.github.io/"
  version "v1.0.0"
  url "https://github.com/bassosimone/libremk_platform/archive/v1.0.0.tar.gz"
  sha256 "14a9fbd3348cfee705528935614ecb21d8c25253c4607add45a2476a3f60b741"

  depends_on "cmake"

  def install
    system "./autogen.sh" if build.head?
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}",
           "-DBUILD_SHARED_LIBS=ON",
           "-DREMK_PLATFORM_BUILD_EXAMPLES=OFF"
    system "make", "install"
  end
end
