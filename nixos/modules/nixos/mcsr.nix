{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    jemalloc
    waywall
    prismlauncher
  ];
}
