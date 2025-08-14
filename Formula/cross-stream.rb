class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.5.0/cross-stream-v0.5.0-macos.tar.gz"
  sha256 "3440c74a27e7a4fd5549802230c305b2062a4b067526acc3e90989eeab856667"
  license "MIT"
  version "0.5.0"

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
