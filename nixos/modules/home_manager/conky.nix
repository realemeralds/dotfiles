{ pkgs, lib, ... }: {
  services.conky = {
    enable = true;
    # extraConfig = (builtins.readFile ./../../../configs/conky.conf);journalctl --user
  };

  home.file."conky" = {
    enable = true;
    source = ./../../../configs/conky.conf;
    target = ".config/conky/conky.conf";
  };

  home.file."conky_autostart" = {
    enable = true;
    source = ./../../../configs/conky.desktop;
    target = ".config/autostart/conky.desktop";
  };
}
