class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.0/cross-stream-v0.6.0-macos.tar.gz"
  sha256 "842da62521680e9475edb278757b24953881bf3185f979c63b79dff8be3c60f5"
  license "MIT"
  version "0.6.0"

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
