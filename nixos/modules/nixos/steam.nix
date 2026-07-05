{ config, pkgs, ... }: {
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  programs.gamemode.enable = true;

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
  users.users."filo".packages = with pkgs; [
    protonup-ng
    (olympus.override { celesteWrapper = "steam-run"; }) # Celeste Modding
  ];
}
