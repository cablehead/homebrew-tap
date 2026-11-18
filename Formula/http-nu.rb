class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.19.0/http-nu-v0.19.0-darwin-arm64.tar.gz"
  sha256 "abab27603694b5c4dbb4c76ac43d5d05b530eda72756277d0fe9c9ff518c82ec"
  license "MIT"
  version "0.19.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
