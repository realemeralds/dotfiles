{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    moonlight-qt
  ];
}
