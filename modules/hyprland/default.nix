{ pkgs, inputs, ... }: {
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

        "CAELESTIA_HOME,${inputs.caelestia-shell.packages.${pkgs.system}.default}/share/caelestia-shell"
      ];

      exec-once = [
        "caelestia-shell"
      ];
    };
  };
}