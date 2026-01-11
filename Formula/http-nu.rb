class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.9.1/http-nu-darwin-arm64.tar.gz"
  sha256 "27867fe109d2e3954dca796474e8bcc31a35689a5cd5d83cabdc99e470c3252b"
  license "MIT"
  version "0.9.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
