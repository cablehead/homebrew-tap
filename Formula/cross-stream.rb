class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.14.2/cross-stream-v0.14.2-macos.tar.gz"
  sha256 "79c404d4af442b6bbd402b6d5e7ef55a462ca595a8419e0a9b917b8e48b7b9fe"
  license "MIT"
  version "0.14.2"

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
