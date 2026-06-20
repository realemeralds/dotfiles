{
  services.xserver.displayManager.lightdm.greeters.slick = {
    enable = true;
    draw-user-backgrounds = true;
    # extraConfig =
    #   let
    #     background_path = ../../../configs/backgrounds/complete-8.png;
    #   in
    #   ''
    #     background=${background_path}
    #   '';
  };
}
