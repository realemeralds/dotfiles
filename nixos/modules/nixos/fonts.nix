{ pkgs, ... }:
{
  # Font Manager
  users.users."filo" = {
    packages = with pkgs; [
      font-manager
    ];
  };

  # Install fonts (https://wiki.nixos.org/wiki/Fonts)
  fonts.packages = with pkgs; [
    icomoon-feather
    cascadia-code
    jetbrains-mono
    helvetica-neue-lt-std
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.iosevka
    (google-fonts.override {
      fonts = [
        "GoogleSansCode"
      ];
    })
  ];

  home-manager.users."filo" = { pkgs, ... }: {
    home.file."fonts" = {
      enable = true;
      source = ./../../../configs/fonts;
      target = ".local/share/fonts";
    };

    home.stateVersion = "26.11"; # Match your current state version
  };
}
