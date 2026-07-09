{ inputs, pkgs, ... }:
let
  mkPluginUrl = id: "https://addons.mozilla.org/firefox/downloads/latest/${id}/latest.xpi";

  mkExtensionEntry =
    {
      id,
      pinned ? false,
    }:
    let
      base = {
        install_url = mkPluginUrl id;
        installation_mode = "force_installed";
      };
    in
    if pinned then base // { default_area = "navbar"; } else base;

  mkExtensionSettings = builtins.mapAttrs (
    _: entry: if builtins.isAttrs entry then entry else mkExtensionEntry { id = entry; }
  );
in
{
  # Imports are in configuration.nix
  imports = [
    # inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight-official
  ];

  # Most settings are not kept here, but are stored with Firefox Sync.
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;

    policies = {
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      ExtensionSettings = mkExtensionSettings {
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = mkExtensionEntry {
          id = "bitwarden-password-manager";
          pinned = true;
        };
        "uBlock0@raymondhill.net" = mkExtensionEntry {
          id = "ublock-origin";
          pinned = true;
        };
        "moz-addon-prod@7tv.app" = "7tv-extension";
        "{74145f27-f039-47ce-a470-a662b129930a}" = "clearurls";
        "{36bdf805-c6f2-4f41-94d2-9b646342c1dc}" = "export-cookies-txt";
        "jid1-KKzOGWgsW3Ao4Q@jetpack" = "i-dont-care-about-cookies";
        "sponsorBlocker@ajay.app" = "sponsorblock";
        "firefox@tampermonkey.net" = "tampermonkey";
      };
    };
    profiles.default = {
      settings = {
        "zen.view.compact.enable-at-startup" = false;
        "zen.view.compact.hide-toolbar" = true;
        "zen.view.compact.toolbar-flash-popup" = true;
        "zen.view.grey-out-inactive-windows" = false;
        "zen.view.use-single-toolbar" = false;
        "zen.welcome-screen.seen" = true;
        "zen.workspaces.continue-where-left-off" = true;

        # Zen Mod Settings
        "theme.custom_uifont.custom" = "sans-serif";
        "theme.custom_uifont.default" = "Serif";
        "theme.custom_uifont.shadow" = "none";
        "psu.tab_title_fixes.font_size" = "13px";
        "psu.tab_title_fixes.pending_opacity" = "0.55";
      };

      mods = [
        "e74cb40a-f3b8-445a-9826-1b1b6e41b846" # Custom uiFont
        "7190e4e9-bead-4b40-8f57-95d852ddc941" # Tab Title Fixes
      ];

      keyboardShortcutsVersion = 19;
      keyboardShortcuts = [
        {
          id = "zen-compact-mode-toggle";
          key = "c";
          modifiers = {
            control = true;
            alt = true;
          };
        }
      ];

      search = {
        force = true; # Enforce declared search engines on each rebuild
        default = "ddg";
        engines = {
          mynixos = {
            name = "My NixOS";
            urls = [
              {
                template = "https://mynixos.com/search?q={searchTerms}";
                params = [
                  {
                    name = "query";
                    value = "searchTerms";
                  }
                ];
              }
            ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "@nx" ];
          };
          github = {
            name = "GitHub Search";
            urls = [
              {
                template = "https://github.com/search?q={searchTerms}";
              }
            ];
            definedAliases = [ "@gh" ];
          };
        };
      };
    };
  };
}
