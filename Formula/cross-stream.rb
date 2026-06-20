class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.13.4/cross-stream-v0.13.4-macos.tar.gz"
  sha256 "09a77d79dc3bf94c470dd06d00c7ae5cc1dfb29d3b9f2159bfe07fca260e41ee"
  license "MIT"
  version "0.13.4"

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
