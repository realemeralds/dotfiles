{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    settings = {
      devices = {
        "syncthing-home" = {
          id = "EW74H5F-TYZKS3U-IL6LYAL-TCS6ZUY-7ZBR2ZY-6C2SIDM-EVHGE2C-KRT4IAL";
        };
      };
      folders = {
        "obsidian_vault" = {
          path = "/home/filo/Documents/obsidian_vault";
          devices = [
            "syncthing-home"
          ];
        };
      };
    };
  };

  # port 8384  is the default port to allow access from the network.
  networking.firewall.allowedTCPPorts = [ 8384 ];
}
