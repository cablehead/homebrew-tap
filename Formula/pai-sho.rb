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
    # point macOS at the owned resolver for the `.ps.internal` domain, then exec the
    # daemon serving that resolver. macOS reads /etc/resolver/<domain> for
    # per-domain nameservers, so this touches only `.ps.internal`, never the global
    # resolver.
    (libexec/"pai-sho-serve").write <<~SH
      #!/bin/sh
      set -e
      mkdir -p /etc/resolver
      printf 'nameserver 127.0.0.1\\nport 5353\\n' > /etc/resolver/ps.internal
      exec "#{opt_bin}/pai-sho" daemon --resolver 127.0.0.1:5353
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
      Start the supervised operator daemon (needs root to wire `.ps.internal`):
        sudo brew services start cablehead/tap/pai-sho

      This runs `pai-sho daemon --resolver 127.0.0.1:5353` and writes
      /etc/resolver/ps.internal so `<peer>.ps.internal` (e.g. vibenv-ndyg.ps.internal) resolves through
      the daemon's owned resolver. Only the `.ps.internal` domain is routed there; the
      system resolver is left untouched. Stop it with:
        sudo brew services stop cablehead/tap/pai-sho

      The resolver flag requires a release that includes surfaces/auto-project
      (cablehead/pai-sho#4); bump url/sha256/version to that release.
    EOS
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
