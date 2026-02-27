{ pkgs, ... }: {
  imports = [
    ./binds.nix
    ./look.nix
    ./input.nix
    ./rules.nix
    ./monitors.nix

    ./services/hyprpaper/hyprpaper.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    xwayland.enable = true;
    settings = {
      "$terminal" = "kitty";
      "$fileManager" = "nautilus";
      "$menu" = "rofi -show drun";

      env = [
        "GTK_THEME,Adwaita:dark"
        "XCURSOR_THEME,Adwaita"
      ];

      exec-once = [
        "caelestia-shell"
      ];
    };
  };
}