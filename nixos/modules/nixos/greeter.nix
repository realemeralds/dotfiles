{ pkgs, ... }: {
  services.xserver.displayManager.lightdm.greeters.slick = {
    enable = true;
    draw-user-backgrounds = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = (pkgs.papirus-nord.override { accent = "frostblue4"; });
    };
    font = {
      name = "Iosevka Nerd Font Mono 11";
      package = pkgs.nerd-fonts.iosevka;
    };
    extraConfig =
      let
        background = ../../../configs/backgrounds/complete-8.png;
      in
      ''
        show-keyboard=false
        show-a11y=false
        background=${background}
      '';
  };
}
