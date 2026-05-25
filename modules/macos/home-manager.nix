{ config, ... }:
{
  flake.modules.darwin.base.home-manager = {
    # these are all macos specific options. by default, the darwin base
    # module includes the home manager base module.
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      sharedModules = builtins.attrValues (config.flake.modules.home.base or { });
    };
  };
}
