{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    itch
  ];
}
