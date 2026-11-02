{
  system.autoUpgrade = {
    enable = true;
    flake = "../../flake.nix";
    flags = [
      "--print-build-logs"
      "--commit-lock-file" # If you want to automatically commit the updated flake.lock
    ];
    dates = "02:00";
    randomizedDelaySec = "45min";
  };
}
