# Source;
{ pkgs, ... }: {
  users.users."filo" = {
    packages = with pkgs; [
      zsh-powerlevel10k
    ];
  };

  security.sudo.extraConfig = ''
    Defaults pwfeedback # password input feedback - makes typed password visible as asterisks
  '';

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    promptInit = ''
      # this act as your ~/.zshrc but for all users (/etc/zshrc)
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source ~/.p10k.zsh

      # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
      # Initialization code that may require console input (password prompts, [y/n]
      # confirmations, etc.) must go above this block; everything else may go below.
      # double single quotes () to escape the dollar char
      if [[ -r "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-''$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi

      # uncomment if you want to customize your LS_COLORS
      # https://manpages.ubuntu.com/manpages/plucky/en/man5/dir_colors.5.html
      #LS_COLORS='...'
      #export LS_COLORS

      # Direnv hook: https://direnv.net/docs/hook.html
      eval "$(direnv hook zsh)"

      # Neofetch alias
      alias neofetch="neowofetch"
    '';
    histSize = 10000;

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "dirhistory"
        "history"
      ];
    };
  };
  users.users."filo".shell = pkgs.zsh;
  system.userActivationScripts.zshrc = "touch .zshrc";
  environment.pathsToLink = [ "/share/zsh" ];
  environment.shells = with pkgs; [ zsh ];
}
