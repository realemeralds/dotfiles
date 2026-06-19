{ config, pkgs, ... }: {
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  programs.gamemode.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false; # see the note above
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  hardware.nvidia.modesetting.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."filo".packages = with pkgs; [
    protonup-ng
  ];
  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
}
