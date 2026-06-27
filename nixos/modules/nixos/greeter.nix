{ pkgs, ... }: {
  services.xserver.displayManager.lightdm.greeters.slick = {
    enable = true;
    draw-user-backgrounds = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = (pkgs.papirus-nord.override { accent = "frostblue4"; });
    };
    font = {
      name = "Iosevka Nerd Font Mono 12";
      package = pkgs.nerd-fonts.iosevka;
    };
    extraConfig = ''
      logo=/nix/store/scb01pl8b2wly3mpihk1f34bzs5j7p58-system-path/share/icons/hicolor/1024x1024/apps/nix-snowflake-white.png
      show-keyboard=false
    '';
  };
}
