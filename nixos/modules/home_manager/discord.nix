{ pkgs, ... }: {
  programs.discord.enable = true;

  # From ChatGPT
  systemd.user.services.discord = {
    Unit = {
      Description = "Start Discord minimized";
      After = [
        "network-online.target"
        "graphical-session.target"
      ];
      Wants = [ "network-online.target" ];
    };

    Service = {
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 5";
      ExecStart = "${pkgs.discord}/bin/discord --start-minimized";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
