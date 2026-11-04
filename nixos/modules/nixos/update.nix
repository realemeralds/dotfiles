{ inputs, ... }: {
  system.autoUpgrade = {
    enable = true;
    flake = "/home/filo/dotfiles/nixos";
    flags = [
      "--print-build-logs"
      "--commit-lock-file" # If you want to automatically commit the updated flake.lock
    ];
    dates = "02:00";
    randomizedDelaySec = "45min";
  };

  environment.etc."root_gitconfig" = {
    target = "custom/root_gitconfig";
    text = ''
      [safe]
        directory = /path/to/flake
    '';
  };

  system.activationScripts.rootGitConfig = ''
    ln -sf /etc/custom/root_gitconfig /root/.gitconfig
  '';
}
