{ pkgs, lib, inputs, ... }:

{
  imports = [
    ./modules/hyprland
  ];
  
  home.stateVersion = "24.11"; # Don't change this, it's for internal compatibility

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 24;
  };

  # Your apps go here
  home.packages = with pkgs; [
    kitty
    waybar
    rofi

    inputs.gazelle.packages.${pkgs.system}.default
  ];

  # Let Nix manage Kitty for you
  programs.kitty = {
    enable = true;
    settings = {
    # --- Fonts ---
    font_family = "JetBrainsMono Nerd Font";
    bold_font = "auto";
    italic_font = "auto";
    bold_italic_font = "auto";
    font_size = "8.0";

    # --- Window Layout ---
    window_padding_width = "15";
    confirm_os_window_close = "0";
    background_opacity = "0.85";

    # --- Cursor ---
    cursor_shape = "block";
    cursor_blink_interval = "0";

    # --- Performance ---
    repaint_delay = "10";
    input_delay = "3";
    sync_to_monitor = "yes";

    # --- Colors ---
    background = "#1a1b26";
    foreground = "#c0caf5";
    selection_background = "#33467c";
    color0 = "#15161e";
    color8 = "#414868";
    };
  };

  # Tell Home Manager to start automatically
  programs.home-manager.enable = true;

  services.ssh-agent.enable = true;
}
