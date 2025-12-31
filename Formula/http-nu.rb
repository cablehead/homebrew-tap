class HttpNu < Formula
  desc "The surprisingly performant, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.7.1/http-nu-darwin-arm64.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  version "0.7.1"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
