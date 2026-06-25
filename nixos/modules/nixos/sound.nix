{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    alsa-utils
  ];

  hardware.alsa.enablePersistence = true;
}
