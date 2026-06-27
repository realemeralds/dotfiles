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
      logo=nix-snowflake-white
    '';
  };
}
