class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.4.2/cross-stream-0.4.2-macos.tar.gz"
  sha256 "a4403ecec364579659efa6476b450261060811d7e1a0df4fec2084590b11ccb6"
  license "MIT"
  version "0.4.2"

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
