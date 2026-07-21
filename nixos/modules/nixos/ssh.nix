{
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "filo" ];
      MaxAuthTries = 3;
      PerSourcePenalties = "crash:3600s authfail:3600s max:86400s";
    };
  };

  users.users."filo".openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILH09O/NI00HJ1d6yrFPzdFloC1y1gFp6Zq8PczqHOza filo@nixos-laptop"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAB9IyzgjXqV5W1/Y8mybje9GpHrzDbJ9rlFm1ktB4vH filo@android"
  ];
}
