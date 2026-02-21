{ pkgs, ... }: {
  boot.loader = {
    systemd-boot.enable = false;

    limine = {
      enable = true;
      efiSupport = true;
    };

    extraConfig = ''
        # Tell Limine to look at the root of the boot partition for the image
        wallpaper=boot:///boot-bg.png
        
        # Optional: Darken the background slightly so the white text is readable
        term_background=00000000
        term_background_style=tiled
        
        # Optional: Add a margin so the text doesn't touch the edge of the screen
        term_margin=50
      '';
    };

    efi.canTouchEfiVariables = true;
  };
}