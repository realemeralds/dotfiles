{ pkgs, ... }: {
  # Enable cron service
  services.cron = {
    enable = true;
    systemCronJobs = [
      "@reboot      filo    ${pkgs.resticprofile}/bin/resticprofile run-schedule backup@nixos"
    ];
  };
}
