{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    jemalloc
    waywall
    prismlauncher
  ];
  networking.firewall.allowedTCPPorts = [
    6767
  ];
  networking.firewall.allowedUDPPorts = [
    6767
  ];
}
