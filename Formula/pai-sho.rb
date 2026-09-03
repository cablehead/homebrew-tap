class PaiSho < Formula
  desc "Peer-to-peer TCP port forwarding over iroh"
  homepage "https://github.com/cablehead/pai-sho"
  url "https://github.com/cablehead/pai-sho/releases/download/v0.5.2/pai-sho-v0.5.2-macos-arm64.tar.gz"
  sha256 "cf1ba2200bb3eb203c158e788a29a814f113dfa61e8bc8a0374d340c499a1ac4"
  license "MIT"

  def install
    bin.install "pai-sho"

    # Supervised operator launch. Runs as root (creating a utun and editing
    # /etc/resolver both need it), brings up the private network, and hands the
    # control socket to the logged-in user so the CLI needs no sudo. pai-sho
    # chowns the socket itself (after bind, before accept) via --socket-owner,
    # so there is no poll and no race; exec lets launchd supervise it directly.
    (libexec/"pai-sho-operator").write <<~SH
      #!/bin/bash
      set -e
      # send .pai-sho lookups to the daemon's in-stack resolver
      mkdir -p /etc/resolver
      printf 'nameserver 10.99.0.53\\n' > /etc/resolver/pai-sho

      KEY="#{var}/pai-sho/op.key"   # persistent: the operator key is stable across restarts
      mkdir -p "$(dirname "$KEY")"

      u=$(stat -f%Su /dev/console)  # the logged-in user
      exec "#{opt_bin}/pai-sho" --socket /tmp/pai-sho.sock daemon \\
        --key "$KEY" --tun utun --socket-owner "$u"
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

        pai-sho key
        pai-sho invite --as <name>

      The operator key persists at #{var}/pai-sho/op.key, so it is stable
      across restarts and a workload can be given it ahead of time.
    EOS
  end

  test do
    system "#{bin}/pai-sho", "--help"
  end
end
