class Wauthn < Formula
  desc "WebAuthn/passkey ceremony CLI, wrapping webauthn-rs"
  homepage "https://github.com/cablehead/wauthn"
  url "https://github.com/cablehead/wauthn/releases/download/v0.1.1/wauthn-v0.1.1-macos-arm64.tar.gz"
  sha256 "eb2b167e337b323cdaa28cb2b70bb17a4ba43795a18ae17e6f161d93628fa188"
  license "MIT"
  version "0.1.1"

  def install
    bin.install "wauthn-v0.1.1/wauthn" => "wauthn"
  end

  test do
    assert_match "error", shell_output("#{bin}/wauthn bogus 2>&1", 1)
  end
end
