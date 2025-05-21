class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.2.0/cross-stream-0.2.0-macos.tar.gz"
  sha256 "4ea80ec433cd269ff5283aad7843ad17e4f5f33071730a5b472dc156e792b480"
  license "MIT"
  version "0.2.0"

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
