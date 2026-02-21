{ pkgs, ... }: {
  imports = [
    ./binds.nix
    ./look.nix
    ./monitors.nix
    ./rules.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      exec-once = [
        "hyprctl setcursor Bibata-Modern-Classic 24"
        "waybar"
      ];
      input = {
        kb_layout = "us";
        follow_mouse = 1;
        touchpad.natural_scroll = false;
      };
    };
  };
}