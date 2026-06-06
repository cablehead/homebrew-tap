class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.13.2/cross-stream-v0.13.2-macos.tar.gz"
  sha256 "df08000ed6af7c519e3b30b7dad7cc8e09a6f6f6cc900fb9fd346dd03a4c738f"
  license "MIT"
  version "0.13.2"

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
