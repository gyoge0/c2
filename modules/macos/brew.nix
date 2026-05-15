{
  flake.modules.darwin.base = {
    homebrew = {
      enable = true;
      onActivation.cleanup = "zap";
    };
    home-manager.sharedModules = [
      {
        zsh = {
          initContent = ''
            eval "$(/opt/homebrew/bin/brew shellenv)"
          '';
        };
      }
    ];
  };
}
