class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.18.2/http-nu-v0.18.2-darwin-arm64.tar.gz"
  sha256 "acb28c4eae030efcc8dd3c57eb97da41dfc03bd42d8c1de60b98bb9928314db6"
  license "MIT"
  version "0.18.2"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
