{ pkgs, ... }: {
  home.packages = with pkgs; [ flatpak ];

  home.file."discord_autostart" = {
    enable = true;
    source = ./../../../configs/discord.desktop;
    target = ".config/autostart/discord.desktop";
  };
}
