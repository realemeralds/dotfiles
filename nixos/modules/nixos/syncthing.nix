{
  home-manager.users."filo" = { pkgs, ... }: {
    services.syncthing = {
      enable = true;
    };
    home.stateVersion = "26.11"; # Match your current state version
  };

  # port 8384  is the default port to allow access from the network.
  networking.firewall.allowedTCPPorts = [
    8384
    22000
  ];
  networking.firewall.allowedUDPPorts = [ 21027 ];
}
