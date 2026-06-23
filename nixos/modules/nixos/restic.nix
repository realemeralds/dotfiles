{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    restic
    # resticprofile
    rclone
  ];
}
