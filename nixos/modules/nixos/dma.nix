{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    dma
  ];

  sops.secrets."dma_auth" = {
    path = "/etc/dma/auth.conf";
    sopsFile = ../../secrets/auth.conf;
    format = "binary";
  };

  environment.etc = {
    "dma.conf" = {
      enable = true;
      source = ../../../configs/dma.conf;
      target = ./dma/dma.conf;
    };
  };
}
