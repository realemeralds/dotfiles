{
  programs.alacritty = {
    enable = true;
  };

  home.file."alacritty" = {
    enable = true;
    source = ./../../../configs/alacritty.toml;
    target = ".config/alacritty/alacritty.toml";
  };

  home.sessionVariables = {
    TERMINAL = "alacritty";
  };
}
