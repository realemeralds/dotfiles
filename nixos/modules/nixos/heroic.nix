{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    heroic
  ];
}
