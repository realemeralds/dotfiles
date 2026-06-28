{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    beeper
  ];
}
