class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.8.0/cross-stream-v0.8.0-macos.tar.gz"
  sha256 "b9f9899770248a7b2950fcc6f16186d17cf55a135827d1f9b47857c2a93dc784"
  license "MIT"
  version "0.8.0"

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
