class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.2/cross-stream-v0.6.2-macos.tar.gz"
  sha256 "8c81c91897699f46260cdaa915758a6590d1a8966a4b6eb31bf00fc49d0b163e"
  license "MIT"
  version "0.6.2"

  def install
    bin.install "xs"
  end

  service do
    run [opt_bin/"xs", "serve", File.join(Dir.home, ".local/share/cross.stream/store")]
  end

  test do
    system "#{bin}/xs", "--version"
  end
end
