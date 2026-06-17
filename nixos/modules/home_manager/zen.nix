{ inputs, ... }: {
  # home.nix
  imports = [
    inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight-official
  ];

  # Most settings are not kept here, but are stored with Firefox Sync.
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
    profiles.default = {
      # settings = {
      #   "zen.view.compact.hide-toolbar" = true;
      #   "zen.window-sync.enabled" = true;
      #   "zen.view.compact.should-enable-at-startup" = false;
      #   "zen.view.grey-out-inactive-windows" = false;
      #   "zen.view.use-single-toolbar" = false;
      #   "zen.welcome-screen.seen" = true;
      #   "zen.workspaces.continue-where-left-off" = true;
      # };

      # Mod settings are NOT declarative.
      mods = [
        "e74cb40a-f3b8-445a-9826-1b1b6e41b846" # Custom uiFont
        "7190e4e9-bead-4b40-8f57-95d852ddc941" # Tab Title Fixes
        "642854b5-88b4-4c40-b256-e035532109df" # Transparent Zen
      ];
    };
  };
}
