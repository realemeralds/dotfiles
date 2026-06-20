{ pkgs, ... }: {
  # 1. System-wide NixOS Settings
  users.users."filo".packages = with pkgs; [ python3 ];
}
