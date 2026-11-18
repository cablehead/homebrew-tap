class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.16.0/cross-stream-v0.16.0-macos.tar.gz"
  sha256 "4bb6248c5bf5dd16038a6e277b35c55ddecadc669240796724921df16591ca2d"
  license "MIT"
  version "0.16.0"

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
