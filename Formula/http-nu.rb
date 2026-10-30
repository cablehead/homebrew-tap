class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.18.4/http-nu-v0.18.4-darwin-arm64.tar.gz"
  sha256 "beccc45c818f780500daa804a37138f837f6b57a232cc1b95261e51b5e5074c6"
  license "MIT"
  version "0.18.4"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
