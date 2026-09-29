class CrossStream < Formula
  desc "An event stream store for personal, local-first use, specializing in event sourcing."
  homepage "https://github.com/cablehead/xs"
  url "https://github.com/cablehead/xs/releases/download/v0.14.0/cross-stream-v0.14.0-macos.tar.gz"
  sha256 "dd72a6f4a236dd42a47500ff47405b91740410db98054dc8de5e42a635fa4d9b"
  license "MIT"
  version "0.14.0"

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
