class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.13.0/http-nu-v0.13.0-darwin-arm64.tar.gz"
  sha256 "045ddf04980cae51fd9cddf7a626e9e7c5e6fc31fe09d5941928fa97a9c71452"
  license "MIT"
  version "0.13.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
