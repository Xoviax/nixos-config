{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  programs.waybar.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
  };

  environment.systemPackages = with pkgs; [
    kitty
    rofi
    waybar
    dunst

    bibata-cursors
    adwaita-icon-theme

    bluetui
    wiremix
  ];

  programs.bash.shellAliases = {
    hyprlandconfig = "sudo nvim /etc/nixos/hyprland.nix";
    hyprconfig = "nvim ~/.config/hypr/hyprland.conf";
  };
}
