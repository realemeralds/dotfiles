{ pkgs, lib, ... }:
let
  shares = [
    "filofiles"
    "filo"
    "sharedfiles"
    "backup"
  ];

  automount_opts =
    "x-systemd.automount,noauto,"
    + "x-systemd.idle-timeout=60,"
    + "x-systemd.device-timeout=5s,"
    + "x-systemd.mount-timeout=5s";
in
{
  # For mount.cifs, required unless domain name resolution is not needed.
  environment.systemPackages = with pkgs; [
    cifs-utils
    # samba # For debugging
  ];

  networking.firewall.extraCommands = ''
    iptables -t raw -A OUTPUT -p udp -m udp --dport 137 -j CT --helper netbios-ns
  '';

  sops.secrets."smb.env" = {
    sopsFile = ../../secrets/smb.env;
    path = "/etc/nixos/smb-secrets";
    format = "dotenv";
  };

  fileSystems = builtins.listToAttrs (
    map (share: {
      name = "/mnt/${share}";
      value = {
        device = "//192.168.1.69/${share}";
        fsType = "cifs";
        options = [
          "${automount_opts},credentials=/etc/nixos/smb-secrets,uid=1000,gid=100"
          "nofail"
        ];
      };
    }) shares
  );
}
