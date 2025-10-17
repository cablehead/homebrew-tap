class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.4/cross-stream-v0.6.4-macos.tar.gz"
  sha256 "39ef2a21441fc4c658bfeef1c463ab88ea2903f9fda4ed3614d0dd86ca3b3241"
  license "MIT"
  version "0.6.4"

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
