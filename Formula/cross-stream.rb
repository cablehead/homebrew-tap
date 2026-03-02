class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.11.0/cross-stream-v0.11.0-macos.tar.gz"
  sha256 "5626c68b181c5ae552a8235a5133db7ea09d234305d5bb79dc067f24aa683944"
  license "MIT"
  version "0.11.0"

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
