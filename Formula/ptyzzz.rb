class Ptyzzz < Formula
  desc "A terminal as a unix pipe: pty in, JSONL screen frames out"
  homepage "https://github.com/cablehead/ptyZZZ"
  url "https://github.com/cablehead/ptyZZZ/releases/download/v0.1.0/ptyZZZ-v0.1.0-macos-arm64.tar.gz"
  sha256 "5b4a6aee278a013f117fee1ac4e1009ff4e7ec44ddb979ed40d6242d1bc5a63b"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "ptyZZZ"
  end

  test do
    system "#{bin}/ptyZZZ", "--help"
  end
end
