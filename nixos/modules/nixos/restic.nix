{ config, pkgs, ... }: {

  nixpkgs.overlays = [
    (final: prev: {
      resticprofile = prev.resticprofile.overrideAttrs (old: {
        doCheck = false;
      });
    })
  ];

  users.users."filo".packages = with pkgs; [
    restic
    resticprofile
    rclone
  ];

  systemd.timers."resticprofile" = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "daily";
      Persistent = true;
      # Alternatively, if you prefer to specify an exact timestamp
      # like one does in cron, you can use the `OnCalendar` option
      # to specify a calendar event expression.
      # Run every Monday at 10:00 AM in the Asia/Kolkata timezone.
      #OnCalendar = "Mon *-*-* 10:00:00 Asia/Kolkata";
      Unit = "resticprofile.service";
    };
  };

  systemd.services."resticprofile" = {
    path = [ pkgs.bash ];
    script = ''
      set -eu
      ${pkgs.resticprofile}/bin/resticprofile run-schedule backup@nixos
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "filo";
    };
  };

  # 2. User-specific Home Manager Settings
  home-manager.users."filo" = {
    home.file."resticprofile" = {
      enable = true;
      source = ./../../../configs/profiles.toml;
      target = ".config/resticprofile/profiles.toml";
    };

    home.stateVersion = "26.11"; # Match your current state version
  };
}
