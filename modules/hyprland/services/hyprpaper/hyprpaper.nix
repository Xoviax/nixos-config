{
    services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "./wallpapers/*"
      ];
      wallpaper = [
        # By display
        #"DP-2,~/wallpapers/wallpaper2.jpg"
        # By default/fallback
        ",./wallpapers/wallhaven-8326zj.png"
      ];
    };
  };
}