class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.14.0/http-nu-v0.14.0-darwin-arm64.tar.gz"
  sha256 "04d9f27abfe72128d1a20d85ab47bc0df76c04fae72b914ec467150174a510f1"
  license "MIT"
  version "0.14.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
