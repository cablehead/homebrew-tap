class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.1.2/pai-sho-v0.1.2-macos-arm64.tar.gz"
  sha256 "fa3b67900574344c41151b4d48a40c02c24c60d71a984b6fba6dc37051648f77"
  license "MIT"
  version "0.1.2"

  def install
    bin.install "pai-sho"
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
