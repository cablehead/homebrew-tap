class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.11.0/http-nu-v0.11.0-darwin-arm64.tar.gz"
  sha256 "6a6bee4dd70a1abd7e6825d78edc711867b6d6d0a0327e59b46af5e7945c2fb6"
  license "MIT"
  version "0.11.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
