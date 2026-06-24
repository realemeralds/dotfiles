{ config, pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    mailutils
    openssl
  ];

  services.postfix = {
    enable = true;
    settings.main = {
      relayhost = [ "[smtp.gmail.com]:465" ];
      smtp_use_tls = "yes";
      smtp_sasl_auth_enable = "yes";
      smtp_tls_wrappermode = "yes";
      smtp_tls_security_level = "encrypt";
      smtp_sasl_security_options = "noanonymous";
      smtp_sasl_password_maps = "texthash:${config.sops.secrets."postfix/sasl_passwd".path}";
      # optional: Forward mails to root (e.g. from cron jobs, smartd)
      # to me privately and to my work email:
    };
  };

  sops.secrets."postfix/sasl_passwd".owner = config.services.postfix.user;
}
