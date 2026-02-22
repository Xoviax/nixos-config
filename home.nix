{ pkgs, lib, inputs, ... }:

{
  imports = [
    ./modules/hyprland
    ./modules/kitty
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

    inputs.gazelle.packages.${pkgs.system}.default
  ];

  # Tell Home Manager to start automatically
  programs.home-manager.enable = true;

  services.ssh-agent.enable = true;
}
