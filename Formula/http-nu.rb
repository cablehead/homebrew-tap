class HttpNu < Formula
  desc "The surprisingly performant, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.7.1/http-nu-darwin-arm64.tar.gz"
  sha256 "c98e6f2d4cad6e36ac2ff623c31a5d6a573cf00ba7915f6d8ae40024600cc477"
  license "MIT"
  version "0.7.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
