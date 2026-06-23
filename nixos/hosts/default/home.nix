{ config, pkgs, ... }:

{
  # Import Home Manager modules
  imports = [
    # ../../modules/home_manager/alacritty.nix
    ../../modules/home_manager/vscode/vscode.nix
    ../../modules/home_manager/conky.nix
    ../../modules/home_manager/cinnamon.nix
    ../../modules/home_manager/chromium.nix
    ../../modules/home_manager/discord.nix
    ../../modules/home_manager/direnv.nix
    ../../modules/home_manager/git.nix
    ../../modules/home_manager/kitty.nix
    ../../modules/home_manager/obsidian.nix
    ../../modules/home_manager/zen.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "filo";
  home.homeDirectory = "/home/filo";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "26.11"; # Please read the comment before changing.

  # Append ~/scripts to PATH (https://discourse.nixos.org/t/link-scripts-to-bin-home-manager/41774/2)
  programs.bash.enable = true;
  home.sessionPath = [
    "$HOME/scripts"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
