{ pkgs, ... }: {
  hardware.graphics.enable32Bit = true;

  users.users."filo".packages = with pkgs; [
    (lutris.override {
      extraLibraries = pkgs: [
        # List library dependencies here
      ];
      extraPkgs = pkgs: [
        # List package dependencies here
      ];
    })
  ];
}
