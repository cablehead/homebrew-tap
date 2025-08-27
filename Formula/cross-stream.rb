class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.6.1/cross-stream-v0.6.1-macos.tar.gz"
  sha256 "20aca1e404a8f42948a585274566b2cb0ed65e995668bd89bf7d032099790622"
  license "MIT"
  version "0.6.1"

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
