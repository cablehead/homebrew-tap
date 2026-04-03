class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.2.1/yoke-v0.2.1-darwin-arm64.tar.gz"
  sha256 "8772b122d8075843262c7ef65071cf2636fddc702b7918990fa1cb5cd6c6ae0d"
  license "MIT"
  version "0.2.1"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
