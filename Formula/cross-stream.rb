class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.0.8/cross-stream-0.0.8-macos.tar.gz"
  sha256 "4427fe154f4dfcb3ffd21cf103e9b081c15d46c0fb5ab2a4c8eff7ea5f45f1fe"
  license "MIT"
  version "0.0.8"

  def install
    bin.install "xs"
  end

  test do
    system "#{bin}/xs", "--version"
  end
end
