{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # openrgb
    openrazer-daemon
    polychromatic
  ];

  # https://wiki.nixos.org/wiki/OpenRGB
  # services.hardware.openrgb = {
  #   enable = true;
  #   package = pkgs.openrgb;
  #   motherboard = "intel";
  #   server.port = 6742;
  # };

  hardware.openrazer.enable = true;
  users.users."filo".extraGroups = [ "openrazer" ];
}
