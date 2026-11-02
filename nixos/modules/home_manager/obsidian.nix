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
          (corePlugin "workspaces" {
            main = {
              id = "825b101510927798";
              type = "split";
              children = [
                {
                  id = "b601de4088f9f9c1";
                  type = "tabs";
                  children = [
                    {
                      id = "7e0ac8812e447784";
                      type = "leaf";
                      pinned = true;
                      state = {
                        type = "kanban";
                        state = {
                          file = "0. filo/Todo List.md";
                          kanbanViewState = {
                            kanban-plugin = "board";
                            list-collapse = [
                              false
                            ];
                          };
                        };
                        pinned = true;
                        icon = "lucide-trello";
                        title = "Todo List";
                      };
                    }
                    {
                      id = "44691ff5fe93c4af";
                      type = "leaf";
                      pinned = true;
                      state = {
                        type = "webviewer";
                        state = {
                          url = "https://calendar.google.com/calendar/u/0/r";
                          title = "Google Calendar - November 2026";
                          mode = "webview";
                        };
                        pinned = true;
                        icon = "globe-2";
                        title = "Google Calendar - November 2026";
                      };
                    }
                  ];
                }
              ];
              direction = "vertical";
            };
            left = {
              id = "59fc3eacc17eeacb";
              type = "split";
              children = [
                {
                  id = "59d739eb79e6582b";
                  type = "tabs";
                  children = [
                    {
                      id = "79bc9254df6f5d1f";
                      type = "leaf";
                      state = {
                        type = "bookmarks";
                        state = {
                          showSearch = false;
                          searchQuery = "";
                        };
                        icon = "lucide-bookmark";
                        title = "Bookmarks";
                      };
                    }
                    {
                      id = "1c17e058e0bccb56";
                      type = "leaf";
                      state = {
                        type = "file-explorer";
                        state = {
                          sortOrder = "alphabetical";
                          autoReveal = false;
                          showSearch = false;
                          searchQuery = "";
                        };
                        icon = "lucide-folder-closed";
                        title = "Files";
                      };
                    }
                    {
                      id = "f5ac9e94f0efd14d";
                      type = "leaf";
                      state = {
                        type = "tagfolder-view";
                        state = {
                        };
                        icon = "stacked-levels";
                        title = "Tag Folder";
                      };
                    }
                    {
                      id = "1b29b099a22d9e98";
                      type = "leaf";
                      state = {
                        type = "search";
                        state = {
                          query = "bookm";
                          matchingCase = false;
                          explainSearch = false;
                          collapseAll = false;
                          extraContext = false;
                          sortOrder = "alphabetical";
                        };
                        icon = "lucide-search";
                        title = "Search";
                      };
                    }
                  ];
                }
              ];
              direction = "horizontal";
              width = 300;
            };
            right = {
              id = "3e5c17d78d953d24";
              type = "split";
              children = [
                {
                  id = "fa50fe4014f6e6b3";
                  type = "tabs";
                  children = [
                    {
                      id = "8699433611b7e5db";
                      type = "leaf";
                      state = {
                        type = "backlink";
                        state = {
                          collapseAll = false;
                          extraContext = false;
                          sortOrder = "alphabetical";
                          showSearch = false;
                          searchQuery = "";
                          backlinkCollapsed = false;
                          unlinkedCollapsed = true;
                        };
                        icon = "links-coming-in";
                        title = "Backlinks";
                      };
                    }
                    {
                      id = "c05657be21f733bf";
                      type = "leaf";
                      state = {
                        type = "outgoing-link";
                        state = {
                          linksCollapsed = false;
                          unlinkedCollapsed = true;
                        };
                        icon = "links-going-out";
                        title = "Outgoing links";
                      };
                    }
                    {
                      id = "e0945116b766951b";
                      type = "leaf";
                      state = {
                        type = "tag";
                        state = {
                          sortOrder = "frequency";
                          useHierarchy = true;
                          showSearch = false;
                          searchQuery = "";
                        };
                        icon = "lucide-tags";
                        title = "Tags";
                      };
                    }
                    {
                      id = "6ebcdd0be1d9bc47";
                      type = "leaf";
                      state = {
                        type = "all-properties";
                        state = {
                          sortOrder = "frequency";
                          showSearch = false;
                          searchQuery = "";
                        };
                        icon = "lucide-archive";
                        title = "All properties";
                      };
                    }
                    {
                      id = "95303b82cbe151da";
                      type = "leaf";
                      state = {
                        type = "outline";
                        state = {
                          file = "3. Areas/Notes/Finance 201.md";
                          followCursor = false;
                          showSearch = false;
                          searchQuery = "";
                        };
                        icon = "lucide-list";
                        title = "Outline";
                      };
                    }
                  ];
                  currentTab = 4;
                }
              ];
              direction = "horizontal";
              width = 300;
              collapsed = true;
            };
            left-ribbon = {
              hiddenItems = {
                "switcher:Open quick switcher" = false;
                "command-palette:Open command palette" = false;
                "graph:Open graph view" = false;
                "canvas:Create new canvas" = true;
                "templates:Insert template" = false;
                "bases:Create new base" = false;
                "obsidian-kanban:Create new board" = true;
                "obsidian-trash-explorer:Open trash explorer" = false;
                "header-adjuster:Adjust headers" = false;
              };
            };
          })
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
                  {
                    "type" = "url";
                    "ctime" = 1793603439162;
                    "url" = "https://calendar.google.com/calendar/u/0/r";
                    "title" = "Google Calendar";
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
