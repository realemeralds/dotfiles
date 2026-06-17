# For config on login screen + scroll speed.
{
  services.libinput.mouse = {
    accelProfile = "flat"; # "flat" removes acceleration; use "adaptive" if you prefer it
    accelSpeed = "-0.4"; # Range is -1.0 (slow) to 1.0 (fast)
    additionalOptions = ''
      Option "ScrollPixelDistance" "12"
    '';
  };
}
