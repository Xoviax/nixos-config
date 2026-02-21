{ ... }: {
  wayland.windowManager.hyprland.settings = {
    # windowrulev2 uses a different syntax that handles
    # complex rules like 'suppressevent' and 'nofocus' much better.
    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    ];

    # If you have simple rules, you can still use windowrule (V1)
    windowrule = [
      "float, ^(pavucontrol)$"
      "float, ^(blueman-manager)$"
    ];
  };
}
