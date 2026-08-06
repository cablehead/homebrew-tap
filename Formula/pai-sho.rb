class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.3.0/pai-sho-v0.3.0-macos-arm64.tar.gz"
  sha256 "017f3ebafaf7293969ad5b767020e2be4f029adb0851de12a7767b502922f410"
  license "MIT"
  version "0.3.0"

  def install
    bin.install "pai-sho"

    # Supervised-launch wrapper. Run as root (see the service block) so it can
    # create the utun and point macOS at the owned resolver for the `.pai-sho`
    # domain, then exec the daemon. The TUN backend serves the resolver in-stack
    # on 10.99.0.53:53, so /etc/resolver/pai-sho points there (no port). macOS
    # reads /etc/resolver/<domain> for per-domain nameservers, so this touches
    # only `.pai-sho`, never the global resolver. Verified on macOS 26.4.1.
    (libexec/"pai-sho-serve").write <<~SH
      #!/bin/sh
      set -e
      mkdir -p /etc/resolver
      printf 'nameserver 10.99.0.53\\n' > /etc/resolver/pai-sho
      exec "#{opt_bin}/pai-sho" daemon --tun utun
    SH
    chmod 0755, libexec/"pai-sho-serve"
  end

  service do
    run [opt_libexec/"pai-sho-serve"]
    require_root true # needs /etc/resolver write; also lets the daemon bind low addresses
    keep_alive true
    log_path var/"log/pai-sho.log"
    error_log_path var/"log/pai-sho.log"
  end

  def caveats
    <<~EOS
      Start the supervised operator daemon (needs root to wire `.pai-sho`):
        sudo brew services start cablehead/tap/pai-sho

      This runs `pai-sho daemon --tun utun` (creates a utun owned-network with the
      resolver in-stack on 10.99.0.53:53) and writes /etc/resolver/pai-sho so
      `<peer>.pai-sho` (e.g. vibenv-ndyg.pai-sho) resolves through it. Only the
      `.pai-sho` domain is routed there; the system resolver is left untouched.
      Stop it with:
        sudo brew services stop cablehead/tap/pai-sho

      Requires a release that includes the TUN backend (cablehead/pai-sho#4);
      bump url/sha256/version to that release.
    EOS
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
