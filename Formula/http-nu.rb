class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.17.2/http-nu-v0.17.2-darwin-arm64.tar.gz"
  sha256 "7e8f1416831b60ea076272f815025880ffe4bb0f36bb1e057e2a02f887ad9050"
  license "MIT"
  version "0.17.2"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
