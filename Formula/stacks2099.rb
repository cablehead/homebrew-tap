class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.6.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "75b445171d4896275719134069e933c4c11d404b2efbe8b48a28003a391b315e"
  license "MIT"
  version "0.6.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
