class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.4.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "15699ceb51ed4c590b4c1789959bac5ff5db96b54f85346d3f6e5fa987c5194e"
  license "MIT"
  version "0.4.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
