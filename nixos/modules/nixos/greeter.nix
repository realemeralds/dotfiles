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
    extraConfig = ''
      show-keyboard=false
      show-a11y=false
      background=/nix/store/ivh72w9jbrjbn2hv0p49683q4rixav0g-complete-8.png
    '';
  };
}
