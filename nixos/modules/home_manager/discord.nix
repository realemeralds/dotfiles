{
  home.file."discord_autostart" = {
    enable = true;
    source = ./../../../configs/discord.desktop;
    target = ".config/autostart/discord.desktop";
  };

  programs.nixcord = {
    enable = true;

    # Choose your Discord mod client (enable at most one of these two)
    # discord.vencord.enable = true; # Standard Vencord
    discord.equicord.enable = true; # Equicord (has more plugins)

    # Or these
    # vesktop.enable = true;
    # dorion.enable = true;
    # legcord.enable = true;

    discord.krisp.enable = true;

    # Theming
    quickCss = "/* css goes here */";
    config = {
      # useQuickCss = true;
      # themeLinks = [
      #   "https://raw.githubusercontent.com/link/to/some/theme.css"
      # ];
      frameless = true;

      # plugins = {
      #   hideMedia.enable = true;
      # };
    };
  };
}
