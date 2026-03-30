class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.2.0/pai-sho-v0.2.0-macos-arm64.tar.gz"
  sha256 "d2480e3da6b1ed7d4dc859768d0aa80021b56a61e4e2d40b9109a907f60e0ec7"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
