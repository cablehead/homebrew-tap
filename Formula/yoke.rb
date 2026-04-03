class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.2.0/yoke-v0.2.0-darwin-arm64.tar.gz"
  sha256 "2a6fe4cc140caa0e6b264859cdea9d949d2266113800884260f3120c4e5cbea6"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
