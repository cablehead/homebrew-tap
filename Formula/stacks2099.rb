class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.6.1/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "85ce563bd4572758329fa2a3bc298f7dc149cf1e06262e83e38ef783623c8a97"
  license "MIT"
  version "0.6.1"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
