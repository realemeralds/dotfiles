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
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.iosevka
    (google-fonts.override {
      fonts = [
        "GoogleSans"
        "GoogleSansCode"
      ];
    })
  ];
}
