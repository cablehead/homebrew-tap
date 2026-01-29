class HttpNu < Formula
  desc "The surprisingly performant, Datastar-ready, Nushell-scriptable HTTP server that fits in your back pocket"
  homepage "https://github.com/cablehead/http-nu"
  url "https://github.com/cablehead/http-nu/releases/download/v0.10.2/http-nu-v0.10.2-darwin-arm64.tar.gz"
  sha256 "b653dbf6fffc87a1746298af79ce86029429482925289918bfc86c4ff9fe6393"
  license "MIT"
  version "0.10.2"

  def install
    bin.install "http-nu"
  end

  test do
    system "#{bin}/http-nu", "--version"
  end
end
