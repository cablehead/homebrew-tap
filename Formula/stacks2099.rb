class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.3.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "7aec294946e4b7347e5a2a0f37f64b56224159ebf93ee5bed0dcebacc4398ed8"
  license "MIT"
  version "0.3.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
