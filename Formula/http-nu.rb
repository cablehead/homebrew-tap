class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.18.0/http-nu-v0.18.0-darwin-arm64.tar.gz"
  sha256 "fd9630cdacd9751bd9103126c91445ebaeca5bf4c9b6702d10163fee8f17e83b"
  license "MIT"
  version "0.18.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
