class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.2.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "9a312e72a4d5e390b2785c1e7406e70536578b37ac5bd02ebb57064ea40ccaf0"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
