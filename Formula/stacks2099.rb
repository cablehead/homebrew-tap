class Stacks2099 < Formula
  desc "Server-projected terminal + notes workspace in a single Nushell-powered binary"
  homepage "https://github.com/cablehead/stacks2099"
  url "https://github.com/cablehead/stacks2099/releases/download/v0.5.0/stacks2099-aarch64-apple-darwin.tar.gz"
  sha256 "aaa1ef8cc384e230f1fcc105242f60095219c75de848ec19d425d30a149d0915"
  license "MIT"
  version "0.5.0"

  def install
    bin.install "stacks2099"
  end

  test do
    system "#{bin}/stacks2099", "--help"
  end
end
