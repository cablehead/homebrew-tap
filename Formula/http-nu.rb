class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.17.0/http-nu-v0.17.0-darwin-arm64.tar.gz"
  sha256 "0384b81738dabe4e19e96baaeda1cc7e9c53a7646ea882cc775e248c2bc8395e"
  license "MIT"
  version "0.17.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
