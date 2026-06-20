{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    polybar
    rofi
    pywal16
    calc
    networkmanager_dmenu
    openbox
  ];
}
