class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.17.1/http-nu-v0.17.1-darwin-arm64.tar.gz"
  sha256 "f37ab412984074581a20f3bda37d1703f079c725c67d769b1b4f18799561d5c2"
  license "MIT"
  version "0.17.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
