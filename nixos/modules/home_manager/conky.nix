{ pkgs, lib, ... }: {
  services.conky = {
    enable = true;
  };

  systemd.user.services.conky = {
    Unit = {
      Description = "Conky - Lightweight system monitor";
      After = [ "graphical-session.target" ];
    };

    Service = {
      Restart = "always";
      RestartSec = "3";
      ExecStart = "${pkgs.conky}/bin/conky";
    };

    Install.WantedBy = [ "graphical-session.target" ];
  };

  home.file."conky" = {
    enable = true;
    source = ./../../../configs/conky.conf;
    target = ".config/conky/conky.conf";
  };
}
