{
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
  };

  # port 8384  is the default port to allow access from the network.
  networking.firewall.allowedTCPPorts = [ 8384 ];
}
