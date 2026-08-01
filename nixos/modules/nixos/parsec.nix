{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    parsec-bin
  ];
}
