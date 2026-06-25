{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [ sops ];
  sops.defaultSopsFile = ../../secrets/secrets.yaml;
  sops.defaultSopsFormat = "yaml";
  sops.age.keyFile = "${config.users.users.filo.home}/.config/sops/age/keys.txt";

  sops.secrets."rclone.ini" = {
    path = "/root/.config/rclone/rclone.conf";
    sopsFile = ../../secrets/rclone.ini;
    format = "ini";
  };
}
