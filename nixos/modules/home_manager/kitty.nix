{
  programs.kitty = {
    themeFile = "Alabaster_Dark";
    shellIntegration.enableZshIntegration = true;
    settings = {
      # Fonts
      font_family = {
        family = "CaskaydiaCove Nerd Font Mono";
        style = "Regular";
      };
      font_size = 14;

      cursor_shape = "beam";
      cursor_shape_unfocused = "beam";
      cursor_blink_interval = "0.5 ease-in-out";

      background_opacity = 0.9;
    };
  };
}
