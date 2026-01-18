class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.1.1/pai-sho-v0.1.1-macos-arm64.tar.gz"
  sha256 "2db8e65eae41ee5d75d5c81c744f0978436ccb7b1bdefbea1f5ccfd74ca00254"
  license "MIT"
  version "0.1.1"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
