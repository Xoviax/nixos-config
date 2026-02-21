{ ... }: {
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 5;
      gaps_out = 10;
      border_size = 2;
      "col.active_border" = "rgba(444444ff)"; # Neutral Dark Gray
      "col.inactive_border" = "rgba(222222ff)";
      layout = "dwindle";
    };

    decoration = {
      rounding = 4; # Subtly rounded corners
      shadow.enabled = false; # Clean look, saves resources
      blur.enabled = false;   # Better battery life for the T480
    };

    animations = {
      enabled = true;
      animation = [
        "windows, 1, 3, default" # Fast, standard transitions
        "workspaces, 1, 3, default"
      ];
    };
  };
}