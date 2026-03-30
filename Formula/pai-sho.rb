class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.2.1/pai-sho-v0.2.1-macos-arm64.tar.gz"
  sha256 "e2029adae763f12d49ada72b2f998d01d602b3caeb74b42cf30a40b2aea4ca6a"
  license "MIT"
  version "0.2.1"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
