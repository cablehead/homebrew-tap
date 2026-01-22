class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.9.1/cross-stream-v0.9.1-macos.tar.gz"
  sha256 "1b5a106f55df15a5b576ad5375d8d6e792929614e5736216f8a15b3c1fca28dd"
  license "MIT"
  version "0.9.1"

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
