class XMacosPasteboard < Formula
  desc "A tool to interact with the macOS pasteboard"
  homepage "https://github.com/cablehead/x-macos-pasteboard"
  url "https://github.com/cablehead/x-macos-pasteboard/releases/download/v0.8/x-macos-pasteboard"
  sha256 "ceb45c65da901ea729f5f67e719c38ce049f5fde757f31841bd5c69b63873f84"
  license "MIT"
  version "0.8"

  def install
    bin.install "x-macos-pasteboard"
  end
end