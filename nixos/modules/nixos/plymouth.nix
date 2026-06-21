{ pkgs, ... }: {
  boot = {
    # initrd.systemd.services.plymouth-start = {
    #   after = [ "systemd-modules-load.service" ];
    #   requires = [ "systemd-modules-load.service" ];
    # };
    plymouth = {
      enable = true;
      # theme = "lone";
      # themePackages = with pkgs; [
      #   # By default we would install all themes
      #   (adi1090x-plymouth-themes.override {
      #     selected_themes = [ "lone" ];
      #   })
      # ];
      # theme = "rings";
      # themePackages = with pkgs; [
      #   # By default we would install all themes
      #   (adi1090x-plymouth-themes.override {
      #     selected_themes = [ "rings" ];
      #   })
      # ];
    };

    # Enable "Silent boot"
    # consoleLogLevel = 3;
    # initrd.verbose = false;
    # initrd.kernelModules = [ "bochs" ];
    initrd.systemd.enable = true;
    kernelParams = [
      # "quiet"
      "boot.shell_on_fail"
      # "rd.udev.log_level=3"
      # "rd.systemd.show_status=auto"
    ];

    # Hide the OS choice for bootloaders.
    # It's still possible to open the bootloader list by pressing any key
    # It will just not appear on screen unless a key is pressed
    # loader.timeout = 0;
    loader.systemd-boot.enable = true;
  };
}
