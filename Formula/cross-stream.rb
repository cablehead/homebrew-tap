class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.14.1/cross-stream-v0.14.1-macos.tar.gz"
  sha256 "0f0d74b26b34090e1a4f119dd64aa198248888b202676e81ffcbf6bcce8dfbf4"
  license "MIT"
  version "0.14.1"

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
