{ config, ... }:
{
  flake.modules.darwin.base.home-manager = {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      sharedModules = builtins.attrValues (config.flake.modules.home.base or { });
    };
  };
  flake.modules.darwin.gyoge.home-manager = {
    home-manager.users.gyoge = {
      home.stateVersion = "25.11";
      home.username = "gyoge";
      home.homeDirectory = "/Users/gyoge";
      imports = builtins.attrValues (config.flake.modules.home.gyoge or { });
    };
  };
}
