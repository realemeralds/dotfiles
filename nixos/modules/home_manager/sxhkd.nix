{
  services.sxhkd = {
    enable = true;
    # https://wiki.archlinux.org/title/Clipboard#Tips_and_tricks
    extraConfig = ''
      ~button2
        ;echo -n | xclip -in
    '';
  };
}
