class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.4.0/pai-sho-v0.4.0-macos-arm64.tar.gz"
  sha256 "4290f9038925ada451dc47f3c90fb60a13d76e0982fec1da33e6693b660361a5"
  license "MIT"
  version "0.4.0"

  def install
    bin.install "pai-sho"

    # Supervised operator launch. Runs as root (creating a utun and editing
    # /etc/resolver both need it), brings up the private network, then hands the
    # control socket to the console user so the CLI needs no sudo.
    (libexec/"pai-sho-operator").write <<~SH
      #!/bin/bash
      set -e
      # send .pai-sho lookups to the daemon's in-stack resolver
      mkdir -p /etc/resolver
      printf 'nameserver 10.99.0.53\\n' > /etc/resolver/pai-sho

      KEY="#{var}/pai-sho/op.key"   # persistent: the operator ticket is stable across restarts
      SOCK="/tmp/pai-sho.sock"      # the CLI default, so `pai-sho <cmd>` needs no --socket
      mkdir -p "$(dirname "$KEY")"

      "#{opt_bin}/pai-sho" --socket "$SOCK" daemon --key "$KEY" --tun utun &
      daemon=$!

      # once the daemon has created the socket, give it to whoever is logged in
      for _ in $(seq 1 100); do [ -S "$SOCK" ] && break; sleep 0.1; done
      u=$(stat -f%Su /dev/console 2>/dev/null || true)
      [ -n "$u" ] && [ "$u" != root ] && chown "$u" "$SOCK" 2>/dev/null || true

      wait "$daemon"
    SH
    (libexec/"pai-sho-operator").chmod 0755
  end

  service do
    run [opt_libexec/"pai-sho-operator"]
    require_root true
    keep_alive true
    log_path var/"log/pai-sho-operator.log"
    error_log_path var/"log/pai-sho-operator.log"
  end

  def caveats
    <<~EOS
      To run the pai-sho operator as a background service (creates the utun,
      points the system at the .pai-sho resolver, and hands you the control
      socket), start it as root:

        sudo brew services start pai-sho

      Then drive it without sudo (the socket is chowned to the logged-in user):

        pai-sho ticket
        pai-sho grant-token --label <name>

      The operator key persists at #{var}/pai-sho/op.key, so its ticket is
      stable across restarts.
    EOS
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
