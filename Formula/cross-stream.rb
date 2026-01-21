class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.9.0/cross-stream-v0.9.0-macos.tar.gz"
  sha256 "fe3b68e14260aaa4891380718713997dcc2abeab4a9a2694db639ebe8cc31132"
  license "MIT"
  version "0.9.0"

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
