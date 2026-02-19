class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.12.0/http-nu-v0.12.0-darwin-arm64.tar.gz"
  sha256 "a6468a1e2bc23b0132db4f18621678aface0fd53eb500c22e1fcaeb7e1e2f2f4"
  license "MIT"
  version "0.12.0"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
