class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.10.0/cross-stream-v0.10.0-macos.tar.gz"
  sha256 "310897280d5ca5299ee68df26c154d06d9472cf2bae37c251f4b201cd0033d3e"
  license "MIT"
  version "0.10.0"

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
