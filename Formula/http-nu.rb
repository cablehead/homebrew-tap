class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.10.0/http-nu-darwin-arm64.tar.gz"
  sha256 "d7ee427d1eea3679d10a2dc9aff6337d2f21edcec0101821f47e64fa692e21eb"
  license "MIT"
  version "0.10.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
