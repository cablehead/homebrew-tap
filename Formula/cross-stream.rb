class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.15.1/cross-stream-v0.15.1-macos.tar.gz"
  sha256 "8aeca718cc9150f08ab9b8ceeb4d611cd4aa96cefc84c94e42f12ca57685c372"
  license "MIT"
  version "0.15.1"

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
