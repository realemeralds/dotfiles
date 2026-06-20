{ pkgs, lib, ... }: {
  services.conky = {
    enable = true;
  };

  # systemd.user.services.conky = {
  #   Service = {
  #     ExecStartPre = "${pkgs.coreutils}/bin/sleep 20";
  #   };
  # };

  home.file."conky" = {
    enable = true;
    source = ./../../../configs/conky.conf;
    target = ".config/conky/conky.conf";
  };
}
