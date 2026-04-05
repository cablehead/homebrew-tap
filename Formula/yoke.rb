class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.3.0/yoke-v0.3.0-darwin-arm64.tar.gz"
  sha256 "14850c1d6bcfe844532a7bfe243e2f868612a1232446cbc5eb57f6bbaf64350b"
  license "MIT"
  version "0.3.0"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
