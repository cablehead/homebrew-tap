class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.15.0/cross-stream-v0.15.0-macos.tar.gz"
  sha256 "ebc9075f57f78a0873af17760630968a4644bac6665acd563f3d9074bdf4cae0"
  license "MIT"
  version "0.15.0"

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
