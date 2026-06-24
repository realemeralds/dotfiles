{
  # Enable cron service
  services.cron = {
    enable = true;
    systemCronJobs = [
      "@reboot      filo    resticprofile run-schedule backup@nixos"
    ];
  };
}
