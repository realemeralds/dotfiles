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

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
  users.users."filo".packages = with pkgs; [
    protonup-ng
    (olympus.override { celesteWrapper = "steam-run"; }) # Celeste Modding
  ];
}
