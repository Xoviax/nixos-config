{ ... }: {
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "suppress_event maximize, match:class .*"
      "no_focus 1, match:class ^$, match:title ^$, match:xwayland 1, match:floating 1, match:fullscreen 0, match:pinned 0"
    ];
  };
}