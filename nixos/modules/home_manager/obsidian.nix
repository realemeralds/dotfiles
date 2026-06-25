{ lib, ... }:
let
  # obsidian_path = "../../../../configs/.obsidian";
  obsidian_vault = "./Documents/obsidian_vault";
in
{
  # Decided against a declarative config.
  programs.obsidian.enable = true;

  programs.obsidian.vaults."Obsidian Vault" = {
    enable = true;
    target = "${obsidian_vault}";

    # settings = {
    #   cssSnippets."default" = {
    #     enable = true;
    #     text = ''
    #       .markdown-preview-view ul {
    #         margin-block-start: -0.7em;
    #         /* margin-block-end: -0.7em; */
    #       }

    #       .markdown-preview-view ol {
    #         margin-block-start: -0.7em;
    #         /* margin-block-end: -0.7em; */
    #       }

    #       .markdown-preview-view p {
    #         margin-block-start: 1em;
    #       }

    #       .cm-line:has(+ .cm-embed-block.cm-table-widget) br {
    #         display: none;
    #       }
    #     '';
    #   };

    #   app = ./app.json;
    #   appearance = ./appearance.json;
    #   hotkeys = ./hotkeys.json;
    # };
  };

  # home.file = {
  #   "obsidian_bookmarks" = {
  #     source = "${obsidian_path}/bookmarks.json";
  #     target = "${obsidian_vault}/.obsidian/bookmarks.json";
  #   };

  #   "obsidian_community_plugins" = {
  #     recursive = true;
  #     source = "${obsidian_path}/plugins";
  #     target = "${obsidian_vault}/.obsidian/plugins";
  #   };

  #   "obsidian_core_plugins" = {
  #     source = "${obsidian_path}/core-plugins.json";
  #     target = "${obsidian_vault}/.obsidian/core-plugins.json";
  #   };

  #   "obsidian_core_templates" = {
  #     source = "${obsidian_path}/templates.json";
  #     target = "${obsidian_vault}/.obsidian/templates.json";
  #   };
  # };
}
