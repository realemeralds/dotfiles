{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    moonlight-qt
  ];

  # hardware.graphics = {
  #   enable = true;
  #   extraPackages = with pkgs; [
  #     intel-vaapi-driver
  #     intel-media-driver
  #     vpl-gpu-rt # for newer GPUs on NixOS >24.05 or unstable
  #     # onevpl-intel-gpu  # for newer GPUs on NixOS <= 24.05
  #     # intel-media-sdk   # for older GPUs
  #   ];
  # };
}
