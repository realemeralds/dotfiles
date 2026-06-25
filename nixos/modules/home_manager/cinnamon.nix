# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
# nix-shell -p dconf2nix --run "dconf dump / | dconf2nix > dconf.nix"
{ lib, pkgs, ... }:

with lib.hm.gvariant;

{
  home.file."cinnamon_transparent_panels" = {
    enable = true;
    recursive = true;
    source =
      let
        extension = "transparent-panels@germanfr";
      in
      ../../../configs/cinnamon + ("/" + extension);
    target = ".local/share/cinnamon/extensions/transparent-panels@germanfr";
  };

  home.file."cinnamon_sound_switcher" = {
    enable = true;
    recursive = true;
    source =
      let
        applet = "sound-switcher@irishbruse";
      in
      ../../../configs/cinnamon + ("/" + applet);
    target = ".local/share/cinnamon/applets/sound-switcher@irishbruse";
  };

  dconf.settings = {
    "org/cinnamon" = {
      command-history = [ "r" ];
      desklet-snap-interval = 25;
      enabled-applets = [
        "panel1:left:0:menu@cinnamon.org:0"
        "panel1:center:0:grouped-window-list@cinnamon.org:2"
        "panel1:right:2:notifications@cinnamon.org:5"
        "panel2:center:0:calendar@cinnamon.org:13"
        "panel1:right:6:cornerbar@cinnamon.org:14"
        "panel2:left:0:workspace-switcher@cinnamon.org:15"
        "panel1:right:4:trash@cinnamon.org:17"
        "panel1:right:1:nightlight@cinnamon.org:18"
        "panel1:right:0:sound-switcher@irishbruse:21"
      ];
      enabled-desklets = [ ];
      enabled-extensions = [ "transparent-panels@germanfr" ];
      next-applet-id = 22;
      panel-edit-mode = false;
      panel-zone-icon-sizes = "[{\"panelId\":1,\"left\":0,\"center\":0,\"right\":24},{\"left\":0,\"center\":0,\"right\":0,\"panelId\":2}]";
      panel-zone-symbolic-icon-sizes = "[{\"panelId\": 1, \"left\": 28, \"center\": 28, \"right\": 16}, {\"left\": 28, \"center\": 29, \"right\": 28, \"panelId\": 2}]";
      panel-zone-text-sizes = "[{\"panelId\": 1, \"left\": 0, \"center\": 0, \"right\": 0}, {\"left\": 0.0, \"center\": 11.0, \"right\": 0, \"panelId\": 2}]";
      panels-autohide = [
        "1:false"
        "2:false"
      ];
      panels-enabled = [
        "1:0:bottom"
        "2:0:top"
      ];
      panels-height = [
        "1:40"
        "2:32"
      ];
      panels-hide-delay = [
        "1:0"
        "2:0"
      ];
      panels-show-delay = [
        "1:0"
        "2:0"
      ];
    };

    "org/cinnamon/desktop/background" = {
      picture-uri =
        let
          currPath = ../../../configs/backgrounds/complete-8.png;
        in
        "file://${currPath}";
    };

    "org/cinnamon/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/cinnamon/desktop/a11y/mouse" = {
      dwell-click-enabled = false;
      dwell-threshold = 10;
      dwell-time = 1.2;
      secondary-click-enabled = false;
      secondary-click-time = 1.2;
    };

    "org/cinnamon/desktop/input-sources" = {
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
      ];
    };

    "org/cinnamon/desktop/interface" = {
      cursor-blink-time = 1200;
      cursor-size = 24;
      cursor-theme = "Bibata-Modern-Classic";
      gtk-theme = "Mint-Y-Dark-Aqua";
      icon-theme = "Papirus-Dark";
      toolkit-accessibility = false;
    };

    "org/cinnamon/desktop/keybindings" = {
      custom-list = [ "custom0" ];
    };

    "org/cinnamon/desktop/keybindings/custom-keybindings/custom0" = {
      binding = [ "<Primary><Shift>Escape" ];
      command = "gnome-system-monitor";
      name = "Open System Monitor";
    };

    "org/cinnamon/desktop/keybindings/media-keys" = {
      area-screenshot = [ ];
      area-screenshot-clip = [ "<Shift><Super>s" ];
    };

    "org/cinnamon/desktop/peripherals/keyboard" = {
      delay = mkUint32 500;
      repeat-interval = mkUint32 30;
    };

    "org/cinnamon/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      double-click = 400;
      drag-threshold = 8;
      speed = -0.4;
    };

    "org/cinnamon/desktop/peripherals/touchpad" = {
      speed = 0.0;
    };

    "org/cinnamon/desktop/screensaver" = {
      floating-widgets = false;
      font-date = "Google Sans Medium 24";
      font-time = "Google Sans Medium 64";
      layout-group = 0;
    };

    "org/cinnamon/desktop/sound" = {
      event-sounds = false;
    };

    "org/cinnamon/gestures" = {
      swipe-down-2 = "PUSH_TILE_DOWN::end";
      swipe-down-3 = "TOGGLE_OVERVIEW::end";
      swipe-down-4 = "VOLUME_DOWN::end";
      swipe-left-2 = "PUSH_TILE_LEFT::end";
      swipe-left-3 = "WORKSPACE_NEXT::end";
      swipe-left-4 = "WINDOW_WORKSPACE_PREVIOUS::end";
      swipe-right-2 = "PUSH_TILE_RIGHT::end";
      swipe-right-3 = "WORKSPACE_PREVIOUS::end";
      swipe-right-4 = "WINDOW_WORKSPACE_NEXT::end";
      swipe-up-2 = "PUSH_TILE_UP::end";
      swipe-up-3 = "TOGGLE_EXPO::end";
      swipe-up-4 = "VOLUME_UP::end";
      tap-3 = "MEDIA_PLAY_PAUSE::end";
    };

    "org/cinnamon/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-last-coordinates = mkTuple [
        1.283333
        103.85
      ];
      night-light-schedule-from = 19.5;
      night-light-schedule-mode = "manual";
      night-light-temperature = mkUint32 3800;
    };

    "org/cinnamon/theme" = {
      name = "Mint-Y-Dark-Aqua";
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 148;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      # window-position = mkTuple [
      #   412
      #   62
      # ];
      # window-size = mkTuple [
      #   1096
      #   822
      # ];
    };

    # Reduce input lag: https://hugosum.com/blog/reduce-input-lag-for-gaming-on-gnome
    "org/gnome/mutter" = {
      experimental-features = [ "variable-refresh-rate" ];
    };

    "org/nemo/list-view" = {
      default-column-order = [
        "name"
        "size"
        "type"
        "date_modified"
        "date_created_with_time"
        "date_accessed"
        "date_created"
        "detailed_type"
        "group"
        "where"
        "mime_type"
        "date_modified_with_time"
        "octal_permissions"
        "owner"
        "permissions"
      ];
      default-visible-columns = [
        "name"
        "size"
        "type"
        "date_modified"
      ];
      default-zoom-level = "small";
    };

    "org/nemo/preferences" = {
      default-folder-viewer = "list-view";
      enable-delete = false;
      inherit-folder-viewer = false;
      last-server-connect-method = 3;
      show-hidden-files = true;
    };

    "org/nemo/preferences/menu-config" = {
      selection-menu-duplicate = true;
      selection-menu-move-to = true;
    };

    "org/nemo/desktop" = {
      desktop-layout = "false::false";
    };

    "org/nemo/window-state" = {
      geometry = "800x550+159+152";
      sidebar-bookmark-breakpoint = 2;
      start-with-sidebar = true;
    };

    "org/x/apps/portal" = {
      color-scheme = "prefer-dark";
    };

    "org/x/editor/plugins" = {
      active-plugins = [
        "textsize"
        "modelines"
        "joinlines"
        "docinfo"
        "open-uri-context-menu"
        "bracketcompletion"
        "sort"
        "spell"
        "filebrowser"
        "time"
      ];
    };

    "org/x/editor/plugins/filebrowser/on-load" = {
      root = "file:///";
      tree-view = true;
      virtual-root = "file:///home/filo/.vscode";
    };

    "org/x/editor/preferences/ui" = {
      statusbar-visible = true;
    };

    "org/x/editor/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = 827629879;
      side-panel-size = 200;
      size = mkTuple [
        650
        500
      ];
      state = 87168;
    };

    "org/x/warpinator/preferences" = {
      ask-for-send-permission = true;
      autostart = false;
      connect-id = "NIXOS-778E81C7CA2BDB3BD608";
      no-overwrite = true;
    };
  };
}
