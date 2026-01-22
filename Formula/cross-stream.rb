class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.9.2/cross-stream-v0.9.2-macos.tar.gz"
  sha256 "57c57b7801751949ea79de9e36d682f1b56e03782561d181890f986e25a3e2dd"
  license "MIT"
  version "0.9.2"

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
