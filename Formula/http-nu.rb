class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.15.0/http-nu-v0.15.0-darwin-arm64.tar.gz"
  sha256 "a0bc3d45eea3b7bd3e48231588ae58d9a0aafa3d0a9b1a7cddfe2cbdc1ce2082"
  license "MIT"
  version "0.15.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
