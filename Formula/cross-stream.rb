class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.1.0/cross-stream-0.1.0-macos.tar.gz"
  sha256 "866cb1d978264c569277e16503e2d5c21009d3752e1bf15c76631d41896663b9"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "xs"
  end

  test do
    system "#{bin}/xs", "--version"
  end
end
