{ pkgs, ... }: {
  systemd.services.conky_start = {
    description = "Conky";

    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.conky}/bin/conky";
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 20";
    };
  };
}
