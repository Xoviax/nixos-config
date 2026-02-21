{ pkgs, ... }: {
  boot.loader = {
    systemd-boot.enable = false;

    limine = {
      enable = true;
      efiSupport = true;
    };

    efi.canTouchEfiVariables = true;
  };
}