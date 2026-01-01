class HttpNu < Formula
  desc "The surprisingly performant, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.8.0/http-nu-darwin-arm64.tar.gz"
  sha256 "c24ba483a44043137a6248a02b057c1a54faf182dbd2d8ed4c34d70dea952459"
  license "MIT"
  version "0.8.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
