class UidWrapper < Formula
  desc "UID wrapper library for testing network-related code"
  homepage "https://cwrap.org/uid_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/uid_wrapper-1.2.0.tar.gz"
  sha256 "80910aaa975dc90247b1c49f90f21c7c118d39bf642fdef3a8e9d739cab4df69"
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
