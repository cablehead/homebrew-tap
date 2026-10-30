class Ptyzzz < Formula
  desc "A terminal as a unix pipe: pty in, JSONL screen frames out"
  homepage "https://github.com/cablehead/ptyZZZ"
  url "https://github.com/cablehead/ptyZZZ/releases/download/v0.2.0/ptyZZZ-v0.2.0-macos-arm64.tar.gz"
  sha256 "defa4791b604489db7f6daa9cb00096ff6503c27031c38f9833212ea7378a97b"
  license "MIT"
  version "0.2.0"

  def install
    bin.install "ptyZZZ"
  end

  test do
    system "#{bin}/ptyZZZ", "--help"
  end
end
