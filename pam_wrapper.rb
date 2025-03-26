class PamWrapper < Formula
  desc "PAM wrapper library for testing network-related code"
  homepage "https://cwrap.org/pam_wrapper.html"
  url "https://ftp.samba.org/pub/cwrap/pam_wrapper-1.0.1.tar.gz"
  sha256 "8511444fac15ff8cfc3a08ec00bef9fcb6155f47c474437c1a2189416f8f3622"
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
