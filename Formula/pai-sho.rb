class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.4.0/pai-sho-v0.4.0-macos-arm64.tar.gz"
  sha256 "4290f9038925ada451dc47f3c90fb60a13d76e0982fec1da33e6693b660361a5"
  license "MIT"
  version "0.4.0"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
