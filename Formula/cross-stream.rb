class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.13.1/cross-stream-v0.13.1-macos.tar.gz"
  sha256 "2be9670024795a2deb0bdabb1373f8b52ccfdea66f05f651f03ec4a1fc7e298e"
  license "MIT"
  version "0.13.1"

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
