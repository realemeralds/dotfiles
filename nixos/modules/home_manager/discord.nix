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
    quickCss = ''
      :root {
        
      }
    '';
    config = {
      useQuickCss = true;
      themeLinks = [
        "https://raw.githubusercontent.com/ClearVision/ClearVision-v7/master/ClearVision-v7.theme.css"
        "https://raw.githubusercontent.com/DiscordStyles/DarkMatter/3ac5b187799ad90f59d4201b0b91725a92674e43/DarkMatter.theme.css"
        "https://raw.githubusercontent.com/DiscordStyles/FrostedGlass/c87ce3498268bdb3757f20858365c1f4f505cec3/dist/FrostedGlass.theme.css"
        "https://capnkitten.github.io/BetterDiscord/Themes/Translucence/css/source.css"
      ];
      frameless = true;

      # plugins = {
      #   hideMedia.enable = true;
      # };
    };
  };
}
