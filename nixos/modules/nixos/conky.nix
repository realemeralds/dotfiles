{ pkgs, ... }: {

  # 1. System-wide NixOS Settings
  # users.users."filo".packages = [ pkgs.conky ];

  # systemd.services.conky_start = {
  #   description = "Start Conky";
  #   wantedBy = [ "multi-user.target" ];
  #   after = [
  #     "graphical-session.target"
  #   ];
  #   serviceConfig = {
  #     Type = "oneshot";
  #     ExecStart = "${pkgs.conky}/bin/conky";
  #     RemainAfterExit = true;
  #   };
  # };

  # 2. User-specific Home Manager Settings
  home-manager.users."filo" = { pkgs, ... }: {
    services.conky = {
      enable = true;
    };

    home.file."conky" = {
      enable = true;
      source = ./../../../configs/conky.conf;
      target = ".config/conky/conky.conf";
    };
    home.stateVersion = "26.11"; # Match your current state version
  };
}
