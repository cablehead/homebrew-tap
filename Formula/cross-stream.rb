class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.13.0/cross-stream-v0.13.0-macos.tar.gz"
  sha256 "5f442ddd4be6fb12bc0e75ef5b22b3f83707b80d88374f6f486c07535af7aa89"
  license "MIT"
  version "0.13.0"

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
