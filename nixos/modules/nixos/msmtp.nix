{ config, ... }: {
  programs.msmtp = {
    enable = true;
    accounts.default = {
      auth = true;
      tls = true;
      host = "smtp.gmail.com";
      from = "filosmartnotifs@gmail.com";
      user = "filosmartnotifs@gmail.com";
      passwordeval = "cat /secrets/smtp_password.txt";
    };
  };

  sops.secrets."smtp_auth" = {
    sopsFile = ../../secrets/secrets.yaml;
    format = "yaml";
    owner = config.users.users.filo.name;
  };
}
