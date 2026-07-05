{ lib, ... }:
let
  obsidian_path = ../../../configs/.obsidian;
  obsidian_vault = "./Documents/obsidian_vault";
  # https://github.com/ApprenticeofEnder/ApprenticeofEnder/blob/8351ed7569d653430edf340b6333682234038aa8/modules/home/programs/linux-only/obsidian/plugins.nix#L19
  corePlugin = name: settings: {
    enable = true;
    name = name;
    settings = settings;
  };
in
{
  # Decided against a declarative config.
  programs.obsidian.enable = true;

  programs.obsidian.vaults."Obsidian Vault" = {
    enable = true;
    target = "${obsidian_vault}";

    settings = {
      cssSnippets = [
        {
          name = "default";
          enable = true;
          text = ''
            .markdown-preview-view ul {
              margin-block-start: -0.7em;
              /* margin-block-end: -0.7em; */
            }

            .markdown-preview-view ol {
              margin-block-start: -0.7em;
              /* margin-block-end: -0.7em; */
            }

            .markdown-preview-view p {
              margin-block-start: 1em;
            }

            .cm-line:has(+ .cm-embed-block.cm-table-widget) br {
              display: none;
            }
          '';
        }
      ];

      app = {
        "alwaysUpdateLinks" = true;
        "attachmentFolderPath" = "0. filo/Attachments";
        "newFileLocation" = "folder";
        "newFileFolderPath" = "0. filo";
        "showUnsupportedFiles" = true;
        "trashOption" = "local";
        "promptDelete" = false;
        "spellcheck" = false;
      };

      appearance = {
        "interfaceFontFamily" = "Iosevka Nerd Font Mono";
        "textFontFamily" = "Iosevka Nerd Font Mono";
        "monospaceFontFamily" = "Iosevka Nerd Font Mono";
        "baseFontSize" = 17;
        "accentColor" = "#cf63ca";
        "enabledCssSnippets" = [
          "default"
        ];
      };

      hotkeys = {
        "editor:swap-line-up" = [
          {
            modifiers = [
              "Alt"
            ];
            key = "ArrowUp";
          }
        ];
        "editor:swap-line-down" = [
          {
            modifiers = [
              "Alt"
            ];
            key = "ArrowDown";
          }
        ];
        insert-template = [
          {
            modifiers = [
              "Alt"
            ];
            key = "T";
          }
        ];
        "editor:toggle-fold" = [
          {
            modifiers = [
              "Alt"
            ];
            key = "F";
          }
        ];
        "app:toggle-left-sidebar" = [
          {
            modifiers = [
              "Alt"
            ];
            key = "ArrowLeft";
          }
        ];
        "app:toggle-right-sidebar" = [
          {
            modifiers = [
              "Alt"
            ];
            key = "ArrowRight";
          }
        ];
        "markdown:toggle-preview" = [
          {
            modifiers = [
              "Mod"
            ];
            key = "R";
          }
        ];
        "editor:toggle-source" = [
          {
            modifiers = [
              "Mod"
            ];
            key = "E";
          }
        ];
        "editor:set-heading-1" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "1";
          }
        ];
        "editor:set-heading-2" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "2";
          }
        ];
        "editor:set-heading-3" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "3";
          }
        ];
        "editor:toggle-bullet-list" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "5";
          }
        ];
        "editor:toggle-code" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "8";
          }
        ];
        "editor:toggle-blockquote" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "4";
          }
        ];
        "editor:toggle-comments" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "C";
          }
        ];
        "editor:toggle-inline-math" = [
          {
            modifiers = [
              "Mod"
              "Shift"
            ];
            key = "E";
          }
        ];
      };

      corePlugins =
        # Plugins without config
        map (name: corePlugin name null) [
          "bases"
          "canvas"
          "command-palette"
          "editor-status"
          "file-explorer"
          "file-recovery"
          "global-search"
          "graph"
          "note-composer"
          "outgoing-link"
          "outline"
          "page-preview"
          "properties"
          "slash-command"
          "switcher"
          "tag-pane"
          "word-count"
        ]
        ++ [
          (corePlugin "backlink" {
            backlinkInDocument = false;
          })
          (corePlugin "bookmarks" {
            items = [
              {
                type = "file";
                ctime = 1780744583623;
                path = "0. filo/Todo List.md";
                title = "Todo List";
              }
              {
                type = "group";
                ctime = 1780755644544;
                items = [
                  {
                    type = "file";
                    ctime = 1780746024140;
                    path = "3. Areas/Notes/Priorities 201.md";
                  }
                  {
                    type = "file";
                    ctime = 1780752770588;
                    path = "3. Areas/Notes/Systems 201.md";
                  }
                  {
                    type = "file";
                    ctime = 1780755453504;
                    path = "3. Areas/Notes/Life 201.md";
                  }
                ];
                title = "101s";
              }
              {
                type = "group";
                ctime = 1780755679354;
                items = [
                  {
                    type = "file";
                    ctime = 1780755676912;
                    path = "2. Projects/Indexes/CP Index.md";
                  }
                  {
                    type = "file";
                    ctime = 1780755667446;
                    path = "3. Areas/Area Index.md";
                  }
                ];
                title = "Indexes";
              }
            ];
          })
          (corePlugin "templates" {
            "folder" = "0. filo/Templates";
          })
          (corePlugin "webviewer" {
            "openExternalURLs" = false;
            "enableAdblocking" = true;
          })
        ];
    };
  };

  home.file = {
    "obsidian_community_plugins" = {
      recursive = true;
      source = obsidian_path + "/plugins";
      target = "${obsidian_vault}/.obsidian/plugins";
    };
  };
}
