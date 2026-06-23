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

  # 2. User-specific Home Manager Settings
  home-manager.users."filo" = {
    home.file."resticprofile" = {
      enable = true;
      source = ./../../../configs/profile.toml;
      target = ".config/resticprofile/profile.toml";
    };

    home.stateVersion = "26.11"; # Match your current state version
  };
}
