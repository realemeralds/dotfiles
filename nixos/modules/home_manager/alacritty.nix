{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
  };

  home.file."alacritty" = {
    enable = true;
    source = ./../../../configs/alacritty.toml;
    target = ".config/alacritty/alacritty.toml";
  };

  dconf.settings = {
    "org/cinnamon/desktop/applications/terminal" = {
      exec = "alacritty";
    };
  };
}
