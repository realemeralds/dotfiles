{ pkgs, ... }:
{
  # Install fonts (https://wiki.nixos.org/wiki/Fonts)
  fonts.packages = with pkgs; [
    cascadia-code
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.iosevka
  ];
}
