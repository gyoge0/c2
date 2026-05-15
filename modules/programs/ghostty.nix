{
  flake.modules.home.base.ghostty = {
    programs.ghostty = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
      settings = {
        theme = "iTerm2 Smoooooth";
        font-size = 180;
      };
    };
  };
  # only do config for ghostty
  # ghostty in nixpkgs is broken for macos so we use brew
  flake.modules.darwin.base.ghostty =
    { pkgs, ... }:
    {
      homebrew.casks = [
        "ghostty"
      ];
      home-manager.sharedModules = [
        {
          programs.ghostty.package = pkgs.emptyDirectory;
        }
      ];
    };
}
