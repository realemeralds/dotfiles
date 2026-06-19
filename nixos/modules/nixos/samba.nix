{ pkgs, config, ... }:
{
  # For mount.cifs, required unless domain name resolution is not needed.
  environment.systemPackages = with pkgs; [
    cifs-utils
    # samba # For debugging
  ];
  fileSystems."/mnt/filofiles" = {
    device = "//192.168.1.69/filofiles";
    fsType = "cifs";
    options =
      let
        # this line prevents hanging on network split
        automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in
      [
        "${automount_opts},credentials=/etc/nixos/smb-secrets,uid=1000,gid=100"
        "nofail"
      ];
  };
  networking.firewall.extraCommands = ''
    iptables -t raw -A OUTPUT -p udp -m udp --dport 137 -j CT --helper netbios-ns
  '';
}
