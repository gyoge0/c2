{ inputs, ... }:
{
  flake.modules.darwin.base.nixpkgs.nixpkgs = {
    hostPlatform = "aarch64-darwin";
    config.allowUnfree = true;
    overlays = [
      (final: prev: {
        unstable = import inputs.nixpkgs-unstable {
          system = final.stdenv.system;
          config.allowUnfree = true;
        };
      })
    ];
  };
}
