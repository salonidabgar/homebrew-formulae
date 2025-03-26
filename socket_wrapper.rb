class SocketWrapper < Formula
  desc "Socket wrapper library for testing network-related code"
  homepage "https://cwrap.org/socket_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/socket_wrapper-1.1.5.tar.gz"
  sha256 "8544174765f9c1dc6ec6432e31ca22e5891f0243395a4bf7b08eb3b86610f605"
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