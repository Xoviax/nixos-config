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
    waybar
    rofi
    pavucontrol
    vscodium
    discord-ptb
    mpv
    vlc
    tidal-hifi
    
    # Hyprland
    hyprpaper
  ];

  # Let Nix manage Kitty for you
  programs.kitty.enable = true;


  programs.home-manager.enable = true;

  services.ssh-agent.enable = true;
}
