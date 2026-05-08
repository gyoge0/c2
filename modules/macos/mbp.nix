{ config, inputs, ... }:
{
  flake.darwinConfigurations.mbp = inputs.nix-darwin.lib.darwinSystem {
    modules = [
      config.flake.modules.darwin.base
      config.flake.modules.darwin.gyoge
    ];
  };
  flake.packages.aarch64-darwin.default = config.flake.darwinConfigurations.mbp.system;
}
