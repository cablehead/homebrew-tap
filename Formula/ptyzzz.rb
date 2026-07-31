class Ptyzzz < Formula
  desc "A terminal as a unix pipe: pty in, JSONL screen frames out"
  homepage "https://github.com/cablehead/ptyZZZ"
  url "https://github.com/cablehead/ptyZZZ/releases/download/v0.0.1/ptyZZZ-v0.0.1-macos-arm64.tar.gz"
  sha256 "4fb6fcb24fcb64c3890a05bf2fcedf5219f1f70de7abf9fb739fdd60f80c1f8f"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "ptyZZZ"
  end

  test do
    system "#{bin}/ptyZZZ", "--help"
  end
end
