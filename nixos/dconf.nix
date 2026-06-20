# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "com/github/FontManager/FontManager" = {
      browse-pane-position = 54.94736842105263;
      browse-preview-visible = true;
      content-size = 39.96937212863706;
      mode = "browse";
      sidebar-size = 32.94736842105263;
      window-size = mkTuple [
        950
        700
      ];
    };

    "org/cinnamon" = {
      command-history = [ "r" ];
      desklet-snap-interval = 25;
      enabled-applets = [
        "panel1:left:0:menu@cinnamon.org:0"
        "panel1:center:0:grouped-window-list@cinnamon.org:2"
        "panel1:right:1:notifications@cinnamon.org:5"
        "panel2:center:0:calendar@cinnamon.org:13"
        "panel1:right:5:cornerbar@cinnamon.org:14"
        "panel2:left:0:workspace-switcher@cinnamon.org:15"
        "panel1:right:3:trash@cinnamon.org:17"
        "panel1:right:0:nightlight@cinnamon.org:18"
        "panel1:right:2:sound@cinnamon.org:20"
      ];
      enabled-desklets = [ ];
      enabled-extensions = [ "transparent-panels@germanfr" ];
      next-applet-id = 21;
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

    "org/cinnamon/desktop/applications/calculator" = {
      exec = "gnome-calculator";
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "kitty";
      exec-arg = "--";
    };

    "org/cinnamon/desktop/background" = {
      picture-uri = "file:///nix/store/ard6i0gl3zb26qjp32204hndbjqr7hz2-complete-8.png";
    };

    "org/cinnamon/desktop/background/slideshow" = {
      delay = 15;
      image-source = "directory:///home/filo/dotfiles/configs/backgrounds";
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
      text-scaling-factor = 1.0;
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

    "org/cinnamon/desktop/media-handling" = {
      autorun-never = false;
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

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/a11y/mouse" = {
      dwell-click-enabled = false;
      dwell-threshold = 10;
      dwell-time = 1.2;
      secondary-click-enabled = false;
      secondary-click-time = 1.2;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
      ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      can-change-accels = false;
      clock-show-date = false;
      clock-show-seconds = false;
      cursor-blink = true;
      cursor-blink-time = 1200;
      cursor-blink-timeout = 10;
      cursor-size = 24;
      cursor-theme = "Bibata-Modern-Classic";
      enable-animations = true;
      font-name = "Ubuntu 10";
      gtk-color-palette = "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90";
      gtk-color-scheme = "";
      gtk-enable-primary-paste = true;
      gtk-im-module = "";
      gtk-im-preedit-style = "callback";
      gtk-im-status-style = "callback";
      gtk-key-theme = "Default";
      gtk-theme = "Mint-Y-Dark-Aqua";
      gtk-timeout-initial = 200;
      gtk-timeout-repeat = 20;
      icon-theme = "Papirus-Dark";
      menubar-accel = "F10";
      menubar-detachable = false;
      menus-have-tearoff = false;
      scaling-factor = mkUint32 0;
      text-scaling-factor = 1.0;
      toolbar-detachable = false;
      toolbar-icons-size = "large";
      toolbar-style = "both-horiz";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      double-click = 400;
      drag-threshold = 8;
      left-handed = false;
      middle-click-emulation = false;
      natural-scroll = false;
      speed = -0.4;
    };

    "org/gnome/desktop/privacy" = {
      disable-camera = false;
      disable-microphone = false;
      disable-sound-output = false;
      old-files-age = mkUint32 30;
      recent-files-max-age = 7;
      remember-recent-files = true;
      remove-old-temp-files = false;
      remove-old-trash-files = false;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
      input-feedback-sounds = false;
      theme-name = "LinuxMint";
    };

    "org/gnome/desktop/wm/preferences" = {
      action-double-click-titlebar = "toggle-maximize";
      action-middle-click-titlebar = "lower";
      action-right-click-titlebar = "menu";
      audible-bell = false;
      auto-raise = false;
      auto-raise-delay = 500;
      button-layout = ":minimize,maximize,close";
      disable-workarounds = false;
      focus-mode = "click";
      focus-new-windows = "smart";
      mouse-button-modifier = "<Alt>";
      num-workspaces = 4;
      raise-on-click = true;
      resize-with-right-button = true;
      theme = "Mint-Y";
      titlebar-font = "Ubuntu Medium 10";
      titlebar-uses-system-font = false;
      visual-bell = false;
      visual-bell-type = "fullscreen-flash";
      workspace-names = [ ];
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/dialogs/new" = {
      default-extension = ".zip";
      encrypt-header = false;
      volume-size = 104857;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      sort-method = "name";
      sort-type = "ascending";
      window-size = mkTuple [
        (-1)
        (-1)
      ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 63;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-screenshot" = {
      delay = 0;
      include-pointer = false;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
      columns-order = [
        0
        12
        1
        2
        3
        4
        6
        7
        8
        9
        10
        11
        13
        14
        15
        16
        17
        18
        19
        20
        21
        22
        23
        24
        25
        26
      ];
      sort-col = 8;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      experimental-features = [ "variable-refresh-rate" ];
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
      window-position = mkTuple [
        412
        83
      ];
      window-size = mkTuple [
        1096
        822
      ];
    };

    "org/nemo/preferences" = {
      last-server-connect-method = 3;
      show-hidden-files = true;
    };

    "org/nemo/window-state" = {
      bookmarks-expanded = true;
      geometry = "800x550+159+152";
      maximized = true;
      sidebar-bookmark-breakpoint = 2;
      start-with-sidebar = true;
    };

    "org/x/apps/favorites" = {
      list = [ ];
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

    "org/x/pix/browser" = {
      fullscreen-sidebar = "hidden";
      fullscreen-thumbnails-visible = false;
      maximized = false;
      sidebar-sections = [
        "GthFileProperties:expanded"
        "GthFileComment:expanded"
        "GthFileDetails:expanded"
        "GthImageHistogram:expanded"
      ];
      sidebar-visible = true;
      sort-inverse = false;
      sort-type = "file::mtime";
      startup-current-file = "file:///home/filo/.local/share/PrismLauncher/instances/Fabulously%20Optimized/minecraft/screenshots/2026-06-16_23.06.01.png";
      startup-location = "file:///home/filo/.local/share/PrismLauncher/instances/Fabulously%20Optimized/minecraft/screenshots";
      statusbar-visible = true;
      viewer-sidebar = "hidden";
    };

    "org/x/pix/data-migration" = {
      catalogs-2-10 = true;
    };

    "org/x/pix/general" = {
      active-extensions = [
        "23hq"
        "bookmarks"
        "burn_disc"
        "catalogs"
        "change_date"
        "comments"
        "contact_sheet"
        "convert_format"
        "desktop_background"
        "edit_metadata"
        "exiv2_tools"
        "file_manager"
        "find_duplicates"
        "flicker"
        "gstreamer_tools"
        "gstreamer_utils"
        "image_print"
        "image_rotation"
        "importer"
        "jpeg_utils"
        "list_tools"
        "oauth"
        "photo_importer"
        "raw_files"
        "red_eye_removal"
        "rename_series"
        "resize_images"
        "search"
        "selections"
        "slideshow"
        "terminal"
        "webalbums"
      ];
    };

    "org/x/warpinator/preferences" = {
      ask-for-send-permission = true;
      autostart = false;
      connect-id = "NIXOS-778E81C7CA2BDB3BD608";
      no-overwrite = true;
    };

  };
}
