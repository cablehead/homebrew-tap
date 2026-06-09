class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.13.3/cross-stream-v0.13.3-macos.tar.gz"
  sha256 "4bdbe283b6d15b176ead1ec55ecb896cbe3a31f263094a8beffb4c4863baee48"
  license "MIT"
  version "0.13.3"

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
