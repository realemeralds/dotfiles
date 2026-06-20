{ pkgs, lib, ... }: {
  services.conky = {
    enable = true;
    extraConfig = (builtins.readFile ./../../../configs/conky.conf);
  };

  # home.file."conky" = {
  #   enable = true;
  #   source = ./../../../configs/conky.conf;
  #   target = ".config/conky/conky.conf";
  # };
}
