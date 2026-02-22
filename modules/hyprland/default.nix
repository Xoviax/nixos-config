{ pkgs, ... }: {
  imports = [
    ./binds.nix
    ./look.nix
    ./input.nix
    ./rules.nix
    ./monitors.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    xwayland.enable = true;
    settings = {
      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$menu" = "rofi -show drun";

      exec-once = [
        "nm-applet &"
        "waybar &"
        "hyprpaper &"
      ];
    };
  };
}