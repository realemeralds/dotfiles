{ pkgs, ... }: {
  systemd.services.conky_start = {
    description = "Conky";

    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    script = ''
      conky
    '';
  };
}
