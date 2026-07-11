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
    vesktop.enable = true;
    # dorion.enable = true;
    # legcord.enable = true;

    discord.krisp.enable = true;

    # Theming
    # quickCss = ''
    #   :root {

    #   }
    # '';
    config = {
      # useQuickCss = true;
      enabledThemeLinks = [
        "https://raw.githubusercontent.com/orblazer/discord-nordic/99e6edc29239df004a99dd4e79a724f089edcbb8/nordic.theme.css"
      ];
      themeLinks = [
        "https://raw.githubusercontent.com/ClearVision/ClearVision-v7/master/ClearVision-v7.theme.css"
        "https://raw.githubusercontent.com/DiscordStyles/DarkMatter/3ac5b187799ad90f59d4201b0b91725a92674e43/DarkMatter.theme.css"
        "https://raw.githubusercontent.com/DiscordStyles/FrostedGlass/c87ce3498268bdb3757f20858365c1f4f505cec3/dist/FrostedGlass.theme.css"
        "https://capnkitten.github.io/BetterDiscord/Themes/Translucence/css/source.css"
        "https://raw.githubusercontent.com/moistp1ckle/GitHub_Dark/320e4264ee2ed37e2db9d92c7d2877e6683be807/GitHub-Dark.theme.css"
        "https://raw.githubusercontent.com/orblazer/discord-nordic/99e6edc29239df004a99dd4e79a724f089edcbb8/nordic.theme.css"
      ];
      frameless = true;

      plugins = {
        readAllNotificationsButton.enable = true;
        noProfileThemes.enable = true;
        colorSighted.enable = true;
        reverseImageSearch.enable = true;
        openInApp.enable = true;
        fakeNitro.enable = true;
        clearUrls.enable = true;
        noBlockedMessages.enable = true;
        youtubeAdblock.enable = true;
        customSounds = {
          enable = true;
          callCalling = "{\"enabled\":true,\"selectedSound\":\"custom\",\"volume\":100,\"useFile\":false,\"selectedFileId\":\"a36ab575-599f-4947-941a-54f79f0a0a1c\"}";
          callRinging = "{\"enabled\":true,\"selectedSound\":\"custom\",\"volume\":100,\"useFile\":false,\"selectedFileId\":\"a36ab575-599f-4947-941a-54f79f0a0a1c\"}";
        }; # not declarative!
      };
    };
  };
}
