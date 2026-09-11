{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    jq
    nixfmt
    nixd
    nixfmt-tree
    libnotify
    resources
    mousai
    gnome-clocks
    gnome-solanum
    fzf
    rip2
    tree
    dysk
    lm_sensors
    lsb-release
    tldr
    libreoffice
    kdePackages.kolourpaint
    gcc
    gdb
  ];
}
