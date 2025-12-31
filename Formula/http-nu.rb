class HttpNu < Formula
  desc "The surprisingly performant, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.7.0/http-nu-darwin-arm64.tar.gz"
  sha256 "004e8f9b18c6e9bb01036af3d55b10f09b6527866d6aae3e952d2b79b6112d43"
  license "MIT"
  version "0.7.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
