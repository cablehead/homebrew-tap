class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.4.0/cross-stream-0.4.0-macos.tar.gz"
  sha256 "5c3ca1c8b63b65e1858235accda43a8258fc9cd162595aa7c79c0e74ea38844c"
  license "MIT"
  version "0.4.0"

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
