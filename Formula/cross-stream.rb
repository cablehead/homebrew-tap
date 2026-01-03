class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.7.0/cross-stream-v0.7.0-macos.tar.gz"
  sha256 "29d652a4b010255c2f2517029e010edc427b30243ad69ec6dba3c4fc21835f30"
  license "MIT"
  version "0.7.0"

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
