class WaitForPort < Formula
  desc "Script to wait for a host to listen on a port"
  homepage "https://github.com/csris/wait-for-port"
  url "https://github.com/csris/wait-for-port/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "40dfe0323817b12e81eac55d41962cfa21e86b85ccd46a436f56d81aacc92d3a"
  license "Apache-2.0"

  def install
    args = %W[
      prefix=#{prefix}
    ]

    system "make", *args, "install"
  end

  test do
    system "#{bin}/wait-for-port", "-p", "443", "www.google.com"
  end
end
