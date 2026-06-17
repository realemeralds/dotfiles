{ config, pkgs, ... }: {

  # 1. System-wide NixOS Settings
  users.users."filo".packages = [ pkgs.hyfetch ];

  # 2. User-specific Home Manager Settings
  home-manager.users."filo" = { pkgs, ... }: {
    programs.bash.shellAliases = {
      neofetch = "hyfetch";
    };

    home.stateVersion = "26.11"; # Match your current state version
  };
}
