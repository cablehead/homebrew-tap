class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.1.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "397f3e7fd2028bfb7c2790815fb3fb10084043f1dcfa1bf52f000b75e9e13065"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
