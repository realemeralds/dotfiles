{ config, pkgs, ... }: {

  # 1. System-wide NixOS Settings
  users.users."filo".packages = [ pkgs.hyfetch ];

  # 2. User-specific Home Manager Settings
  home-manager.users."filo" = { pkgs, ... }: {
    home.shellAliases = {
      neofetch = "neowofetch";
    };

    home.file."neofetch" = {
      enable = true;
      recursive = true;
      source = ./../../../configs/neofetch;
      target = ".config/neofetch";
    };

    home.file."hyfetch" = {
      enable = true;
      source = ./../../../configs/hyfetch.json;
      target = ".config/hyfetch.json";
    };

    home.stateVersion = "26.11"; # Match your current state version
  };
}
