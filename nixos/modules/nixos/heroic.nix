{ pkgs, ... }: {
  programs.gamescope.enable = true;
  programs.gamemode.enable = true;

  users.users."filo".packages = with pkgs; [
    (heroic.override {
      extraPkgs =
        pkgs': with pkgs'; [
          gamescope
          gamemode
        ];
    })
  ];
}
