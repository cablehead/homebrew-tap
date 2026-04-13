class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.4.0/yoke-v0.4.0-darwin-arm64.tar.gz"
  sha256 "7a72e24115182149d6d4a6a629c9de5a7d9651fb263b9de4bad6007b8e4c6f54"
  license "MIT"
  version "0.4.0"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
