{ pkgs, ... }: {
  services.xserver.displayManager.lightdm.greeters.slick = {
    enable = true;
    draw-user-backgrounds = true;
    font = {
      name = "Iosevka Nerd Font Mono 11";
      package = pkgs.nerd-fonts.iosevka;
    };
  };
}
