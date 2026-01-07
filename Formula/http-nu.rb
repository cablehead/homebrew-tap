class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.9.0/http-nu-darwin-arm64.tar.gz"
  sha256 "0139012c471fb9ca893f320dd3f6c841b33b08c2f9b986c7d2c1e062d2b47e7f"
  license "MIT"
  version "0.9.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
