class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.9.4/cross-stream-v0.9.4-macos.tar.gz"
  sha256 "61230f5d26865018ef32df058a132a6692f2b599578c5aeb4b0875f00f0ceb32"
  license "MIT"
  version "0.9.4"

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
