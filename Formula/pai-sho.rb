class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.2.2/pai-sho-v0.2.2-macos-arm64.tar.gz"
  sha256 "c72f2cb62f73eb63f25a0b6eff9733f917051b06588f341e462dd67ac7f8eada"
  license "MIT"
  version "0.2.2"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
