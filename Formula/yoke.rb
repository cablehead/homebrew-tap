class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.4.1/yoke-v0.4.1-darwin-arm64.tar.gz"
  sha256 "91481def9b10c271d8b4f7a4dc846267bbf17892d2ed9b02e60cdeda4491d8f6"
  license "MIT"
  version "0.4.1"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
