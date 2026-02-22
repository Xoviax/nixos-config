{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
    };

    shellAliases = {
      ll = "ls -l";
      nixconfig = "sudo nvim /etc/nixos/configuration.nix";
      rebuild = "sudo nixos-rebuild switch";
      flakerebuild = "sudo nixos-rebuild switch --flake .#t480";
      cleanup = "sudo nix-collect-garbage -d";
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      # Powerlevel10k config
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      
      # Load internal PowerLEVEL10k config if it exists
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';


  };
}