class Yoke < Formula
  desc "Headless agent harness. JSONL in, JSONL out."
  homepage "https://github.com/cablehead/yoke"
  url "https://github.com/cablehead/yoke/releases/download/v0.2.2/yoke-v0.2.2-darwin-arm64.tar.gz"
  sha256 "788871140ce3c08d332f6b60bf8508ee67e13d7e43ec5c2fa9621576be1379be"
  license "MIT"
  version "0.2.2"

  def install
    bin.install "yoke"
  end

  test do
    system "#{bin}/yoke", "--help"
  end
end
