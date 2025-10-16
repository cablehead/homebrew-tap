class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.3/cross-stream-v0.6.3-macos.tar.gz"
  sha256 "ac245cbed59aa92c982856b29e88c901fcd98baeb03ffd064b7d2be5fdab5d1b"
  license "MIT"
  version "0.6.3"

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
