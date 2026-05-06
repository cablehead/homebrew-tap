class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.16.0/http-nu-v0.16.0-darwin-arm64.tar.gz"
  sha256 "84eb00ba7eb7817f7c1a03aca92c56ac49c3c5f5821cb47edb4e364c26bb0269"
  license "MIT"
  version "0.16.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
