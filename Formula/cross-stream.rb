class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.5/cross-stream-v0.6.5-macos.tar.gz"
  sha256 "bc21b7bb03ce11e661b04ed5c5bdace86e5da88294e2fb4494e9aa7a9b7efe45"
  license "MIT"
  version "0.6.5"

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
