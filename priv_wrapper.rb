class PrivWrapper < Formula
  desc "Privilege wrapper library for testing network-related code"
  homepage "https://cwrap.org/priv_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/priv_wrapper-1.0.0.tar.gz"
  sha256 "00a46013aee3b1fddb8c84369bbcb7f7733969ce3db9e1ce44fe3237d07d8535"
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
