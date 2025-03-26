class SocketWrapper < Formula
  desc "Socket wrapper library for testing network-related code"
  homepage "https://cwrap.org/socket_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/socket_wrapper-1.1.5.tar.gz"
  sha256 "b50b31f7c96379b5d8f9468c4c13278c75c2bb97c2a0c86d2caff9d6ac2c3329"
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
    system "#{bin}/socket_wrapper", "--version"
  end
end
