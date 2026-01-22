class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.10.1/http-nu-v0.10.1-darwin-arm64.tar.gz"
  sha256 "45e8d26cdb84b901c3a6440f757080972f518976e2b2ec8761a75dc39e3f675c"
  license "MIT"
  version "0.10.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
