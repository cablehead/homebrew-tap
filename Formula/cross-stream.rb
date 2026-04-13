class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.12.0/cross-stream-v0.12.0-macos.tar.gz"
  sha256 "ec73b05e6d24874d804fc160af746f9f0410408a8b3326594202cc82f91d2e19"
  license "MIT"
  version "0.12.0"

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
