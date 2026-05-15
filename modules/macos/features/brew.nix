{
  flake.modules.darwin.base.brew = {
    homebrew = {
      enable = true;
      onActivation.cleanup = "zap";
    };
    home-manager.sharedModules = [
      {
        programs.zsh = {
          initContent = ''
            eval "$(/opt/homebrew/bin/brew shellenv)"
          '';
        };
      }
    ];
  };
}
