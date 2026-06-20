{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    alsa-utils
  ];

  # From https://github.com/JagHack/nixos-rice/blob/5e9da3f11befb64ec2c8a5eab666a6eaac20fbef/hosts/default/configuration.nix#L154
  systemd.services.disable-audio-automute = {
    description = "Disable HDA auto-mute so speakers work with headphones plugged in";
    wantedBy = [ "multi-user.target" ];
    after = [ "systemd-udev-settle.service" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.alsa-utils}/bin/amixer -c 0 sset 'Auto-Mute Mode' Disabled";
      RemainAfterExit = true;
    };
  };
}
