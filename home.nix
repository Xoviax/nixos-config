{ pkgs, lib, inputs, ... }:

{
  imports = [
    ./modules/hyprland
    ./modules/kitty
    ./modules/zsh
  ];
  
  home.stateVersion = "24.11"; # Don't change this, it's for internal compatibility

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };

  home.packages = with pkgs; [
    foot            # The intended terminal
    rofi            # The intended launcher
    brightnessctl   # Fixes the brightness slider
    pamixer         # Fixes the volume slider
    libnotify       # Required for the shell's OSD notifications

    waybar
    pavucontrol
    vscodium
    mpv
    vlc

    # Hyprland
    hyprpaper

    # inputs.gazelle.packages.${pkgs.system}.default
    inputs.gazelle.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  # 1. Set the legacy GTK theme
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };

  # 2. Force modern GNOME/Libadwaita apps to use dark mode
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  programs.kitty.enable = true;

  programs.home-manager.enable = true;

  services.ssh-agent.enable = true;
}
