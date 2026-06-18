# From https://nixos.wiki/wiki/Sunshine
{
  config,
  pkgs,
  lib,
  ...
}:
{
  services.sunshine = {
    enable = true;
    autoStart = true;
    openFirewall = true;
  };

  # services.sunshine.package = pkgs.sunshine.override {
  #   cudaSupport = true;
  #   cudaPackages = pkgs.cudaPackages;
  # };

  # From https://discourse.nixos.org/t/enabling-nvidia-makes-graphics-slower/46435/4
  hardware.opengl = {
    enable = true;
    # driSupport = true;
    # driSupport32Bit = true;
  };

  # boot.extraModulePackages = [
  #   config.boot.kernelPackages.nvidia_x11
  # ];
  # boot.blacklistedKernelModules = [
  #   "nouveau"
  #   "rivafb"
  #   "nvidiafb"
  #   "rivatv"
  #   "nv"
  #   "uvcvideo"
  # ];
  # services.xserver.videoDrivers = [
  #   "nvidia"
  #   "intel"
  # ];

  security.wrappers.sunshine = {
    owner = "root";
    group = "root";
    capabilities = "cap_sys_admin+p";
    source = "${pkgs.sunshine}/bin/sunshine";
  };

  users.users."filo" = {
    extraGroups = [ "uinput" ];
  };

  # From https://www.reddit.com/r/linux_gaming/comments/17dd245/is_there_a_way_to_have_sunshine_launchbe/
  services.displayManager = {
    autoLogin.enable = true;
    autoLogin.user = "filo";
  };

  # From ChatGPT
  systemd.user.services.sunshine = {
    serviceConfig.ExecStartPost = [
      "${pkgs.cinnamon-screensaver}/bin/cinnamon-screensaver-command --lock"
    ];
  };

  # From https://wiki.nixos.org/wiki/Wake_on_LAN
  networking = {
    interfaces = {
      enp4s0 = {
        wakeOnLan.enable = true;
        wakeOnLan.policy = [
          "magic"
        ];
      };
    };
    firewall = {
      allowedUDPPorts = [
        7
        9
      ];
    };
  };
}
