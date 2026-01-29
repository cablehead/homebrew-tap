class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.9.3/cross-stream-v0.9.3-macos.tar.gz"
  sha256 "3624a070b800f214948c117f030172a8e8f99825c481700728a11228786b20a4"
  license "MIT"
  version "0.9.3"

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
