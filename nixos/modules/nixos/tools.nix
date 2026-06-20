{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    jq
    nixfmt
    nil
    nixfmt-tree
    libnotify
    gnome-system-monitor
    fzf
    rip2
    tree
    dysk
  ];
}
