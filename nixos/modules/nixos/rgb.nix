{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    openrgb
  ];

  # https://wiki.nixos.org/wiki/OpenRGB
  services.hardware.openrgb = {
    enable = true;
    package = pkgs.openrgb;
    motherboard = "intel";
    server.port = 6742;
  };
}
