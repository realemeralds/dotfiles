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

      # fzf integration: https://wiki.nixos.org/wiki/Fzf
      eval "$(fzf --zsh)"

      # Aliases (https://github.com/BreadOnPenguins/dots/blob/master/.config/shell/alias)
      alias \
      \
      neofetch="neowofetch" \
      xclip="xclip -selection clipboard" \
      fzp="fzf --preview="bat --color=always {}" \
      fzo="code $(fzf --preview="bat --color=always {})" \
      c="clear" \
      cat="bat" \
      l="ls -lh --color=auto --group-directories-first" \
      ls="ls -h --color=auto --group-directories-first" \
      la="ls -lah --color=auto --group-directories-first" \
      grep="grep --color=auto" \
      mv="mv -i" \
      rm="rm -Iv" \
      df="df -h" \
      du="du -h -d 1" \
      k="killall" \
      p="ps aux | grep $1" \
      man="batman" \
      lsbc="lsblk | bat -l conf -p" \
      freec="free -h | bat -l cpuinfo -p" \
      sensors="sensors | bat -l cpuinfo -p" \
      exiftool="/usr/bin/vendor_perl/exiftool" \
      bathelp='bat --plain --language=help'
      help() {
          "$@" --help 2>&1 | bathelp
      }
      # https://github.com/dylanaraps/fff#cd-on-exit
      f() {
          fff "$@"
          cd "$(cat "''${XDG_CACHE_HOME:=''${HOME}/.cache}/fff/.fff_d")"
      }

      # From Gemini
      fk() {
          if (( $#history )); then
              eval "sudo $history[$((HISTCMD-1))]"
          else
              echo "No history found"
          fi
      }

      export FFF_KEY_GO_TRASH="off"
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
