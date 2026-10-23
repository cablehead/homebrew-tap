class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.18.1/http-nu-v0.18.1-darwin-arm64.tar.gz"
  sha256 "4fd430d9ed9bf6acfbfe181bfbfdb595a210a7ef004b5a5a0c427927b37400b4"
  license "MIT"
  version "0.18.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
