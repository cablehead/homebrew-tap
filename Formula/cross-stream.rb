class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.0.9/cross-stream-0.0.9-macos.tar.gz"
  sha256 "02e7483f7761c91986ee62e25b94d120f64687cf04d7d5fa39052140212c8927"
  license "MIT"
  version "0.0.9"

  def install
    bin.install "xs"
  end

  test do
    system "#{bin}/xs", "--version"
  end
end
