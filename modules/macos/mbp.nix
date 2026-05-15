{ config, inputs, ... }:
{
  flake.darwinConfigurations.mbp = inputs.nix-darwin.lib.darwinSystem {
    modules = [
      config.flake.modules.darwin.base
      config.flake.modules.darwin.gyoge
      inputs.home-manager.darwinModules.home-manager
    ];
  };
  flake.packages.aarch64-darwin.default = config.flake.darwinConfigurations.mbp.system;
}
