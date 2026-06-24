{ config, pkgs, ... }: {
  users.users."filo".packages = with pkgs; [
    mailutils
  ];

  services.postfix = {
    enable = true;
    setSendmail = true;
    settings.main = {
      relayhost = [ "[smtp.gmail.com]:587" ];
      smtp_use_tls = "yes";
      smtp_tls_wrappermode = "yes";
      smtp_tls_security_level = "encrypt";
      smtp_sasl_auth_enable = "yes";
      smtp_sasl_password_maps = "texthash:${config.sops.secrets."postfix/sasl_passwd".path}";
      # optional: Forward mails to root (e.g. from cron jobs, smartd)
      # to me privately and to my work email:
      # virtual_alias_maps = "inline:{ {root=mattechane@gmail.com} }";
    };
  };

  sops.secrets."postfix/sasl_passwd".owner = config.services.postfix.user;
}
