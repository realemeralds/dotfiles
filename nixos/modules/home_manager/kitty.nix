{
  programs.kitty = {
    enable = true;
    themeFile = "Alabaster_Dark";
    shellIntegration.enableZshIntegration = true;
    settings = {
      enable_audio_bell = false;
      remember_window_position = true;
      term = "xterm-256color";
      # Fonts
      font_family = "CaskaydiaCove Nerd Font Mono";
      font_size = 14;

      cursor = "#FFFFFF";
      cursor_beam_thickness = 2;
      cursor_shape = "beam";
      cursor_shape_unfocused = "beam";
      cursor_blink_interval = "0.5";

      background_opacity = 0.9;
      window_padding_width = "12 2 12 12";
    };
  };

  dconf.settings = {
    "org/cinnamon/desktop/applications/terminal" = {
      exec = "kitty";
    };
  };
}
