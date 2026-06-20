{ pkgs, ... }: {
  services.conky = {
    enable = true;
  };

  home.file."conky" = {
    enable = true;
    source = ./../../../configs/conky.conf;
    target = ".config/conky/conky.conf";
  };

  # systemd.services.conky_start = {
  #   description = "Start Conky";
  #   wantedBy = [ "multi-user.target" ];
  #   after = [
  #     "graphical-session.target"
  #   ];
  #   serviceConfig = {
  #     Type = "oneshot";
  #     ExecStart = "conky";
  #     RemainAfterExit = true;
  #   };
  # };
}
