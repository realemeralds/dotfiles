{ pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    (papirus-nord.override { accent = "frostblue4"; })
  ];
}
