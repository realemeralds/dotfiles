{
  programs.kitty = {
    enable = true;
    themeFile = "Alabaster_Dark";
    shellIntegration.enableZshIntegration = true;
    settings = {
      enable_audio_bell = false;
      # Fonts
      font_family = "CaskaydiaCove Nerd Font Mono";
      font_size = 14;

      cursor_shape = "beam";
      cursor_shape_unfocused = "beam";
      cursor_blink_interval = "0.5 ease-in-out";

      background_opacity = 0.9;
    };
  };
}
