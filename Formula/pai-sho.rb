class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.3.0/pai-sho-v0.3.0-macos-arm64.tar.gz"
  sha256 "017f3ebafaf7293969ad5b767020e2be4f029adb0851de12a7767b502922f410"
  license "MIT"
  version "0.3.0"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
