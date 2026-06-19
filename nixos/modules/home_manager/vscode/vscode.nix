{
  pkgs,
  lib,
  ...
}:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    profiles.default = {
      enableUpdateCheck = false;
      enableExtensionUpdateCheck = false;
      userSettings = {
        "explorer.sortOrder" = "type";
        "explorer.confirmDelete" = false;
        "explorer.confirmDragAndDrop" = false;

        "update.showReleaseNotes" = false;
        "workbench.colorTheme" = "One Monokai";
        "workbench.editor.empty.hint" = "hidden";
        "workbench.secondarySideBar.defaultVisibility" = "hidden";
        "chat.disableAIFeatures" = true;

        "editor.fontFamily" = lib.mkForce "Cascadia Mono, Consolas, 'Courier New', monospace";
        "editor.fontWeight" = 400;
        # "editor.fontLigatures" = "'calt', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'zero', 'onum'";

        "terminal.integrated.fontSize" = 16;
        "terminal.integrated.fontFamily" = "CaskaydiaCove Nerd Font Mono"; # For powershell-10k;
        # Turn off font ligatures in terminal
        "terminal.integrated.fontLigatures.featureSettings" = "\"calt\" off, \"liga\" off";
        "terminal.integrated.cursorStyleInactive" = "line";
        "terminal.integrated.cursorStyle" = "line";
        "terminal.integrated.cursorWidth" = 2;

        "editor.formatOnSave" = true;
        "editor.quickSuggestions" = {
          "comments" = "off";
          "other" = "on";
          "strings" = "off";
        };
        "editor.tabSize" = 2;
        "debug.onTaskErrors" = "abort";

        "[nix]" = {
          "editor.defaultFormatter" = "jnoortheen.nix-ide";
          "editor.formatOnSave" = true;
        };
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil";
        "nix.serverSettings" = {
          formatting = {
            "command" = [ "nixfmt" ];
          };
        };
        "nix.hiddenLanguageServerErrors" = [
          "textDocument/formatting"
          "textDocument/documentSymbol"
        ];

        "[cpp]" = {
          "editor.formatOnSave" = false;
        };

        "git.openRepositoryInParentFolders" = "always";
      };
      languageSnippets.cpp = lib.importJSON ./cpp.json;
      keybindings = lib.importJSON ./keybindings.json;
      extensions =
        with pkgs.vscode-extensions;
        [
          jnoortheen.nix-ide
          ms-vscode.cpptools-extension-pack
          mkhl.direnv
          tamasfe.even-better-toml
          aaron-bond.better-comments
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "one-monokai";
            publisher = "azemoh";
            version = "0.5.2";
            sha256 = "lky8hF5h/VIIEecS+zjoTLhyWwWC0axNnIgnkPJAnOA=";
          }
        ];
    };
  };
}
