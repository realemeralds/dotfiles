{ pkgs, config, ... }: {
  users.users."filo".packages = with pkgs; [
    dma
    mailutils
  ];

  sops.secrets."dma_auth" = {
    path = "/etc/dma/auth.conf";
    sopsFile = ../../secrets/auth.conf;
    format = "binary";
    owner = config.users.users.filo.name;
  };

  environment.etc = {
    "dma.conf" = {
      enable = true;
      source = ../../../configs/dma.conf;
      target = "./dma/dma.conf";
    };
  };
}
