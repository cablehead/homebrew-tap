class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.7.1/cross-stream-v0.7.1-macos.tar.gz"
  sha256 "45e2b714ab8f09d207dbac01948603815cc43e8738489fe7a1e86694c0d0b483"
  license "MIT"
  version "0.7.1"

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
