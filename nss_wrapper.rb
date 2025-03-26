class NssWrapper < Formula
  desc "NSS wrapper library for testing network-related code"
  homepage "https://cwrap.org/nss_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/nss_wrapper-1.1.2.tar.gz"
  sha256 "0e65e22bf1c75c3a8931137c85679c6e5136eb5273ffcc6933dfd4f5312561c2"
  license "BSD-3-Clause"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build",
                    "-DCMAKE_INSTALL_PREFIX=#{prefix}",
                    "-DCMAKE_C_FLAGS=-Wno-error=implicit-function-declaration"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # Add a basic test if possible
    system "false"
  end
end
