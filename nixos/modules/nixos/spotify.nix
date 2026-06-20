{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    spotify
  ];

  networking.firewall.allowedUDPPorts = [ 5353 ];
}
