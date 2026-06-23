{ pkgs, ... }: {
  # https://github.com/creativeprojects/resticprofile/issues/645
  nixpkgs.overlays = [
    (final: prev: {
      resticprofile = prev.resticprofile.overrideAttrs (old: {
        doCheck = false;
      });
    })
  ];

  users.users."filo".packages = with pkgs; [
    restic
    resticprofile
    rclone
  ];
}
