{ pkgs, ... }: {
  imports = [
    ./binds.nix
    ./look.nix
    ./input.nix
    ./rules.nix
    ./monitors.nix

    ./services/hyprpaper/hyprpaper.nix
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common.default = "*";
  };

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    xwayland.enable = true;
    settings = {
      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$menu" = "rofi -show drun";

      exec-once = [
        "waybar &"
      ];
    };
  };
}