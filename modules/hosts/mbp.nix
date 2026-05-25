{
  config,
  inputs,
  lib,
  ...
}:
{
  flake.darwinConfigurations.mbp = inputs.nix-darwin.lib.darwinSystem {
    modules =
      lib.concatMap (attrs: builtins.attrValues attrs) (
        with config.flake.modules.darwin;
        [
          base
          gyoge
          office
        ]
      )
      ++ [ inputs.home-manager.darwinModules.home-manager ]
      ++ [
        {
          system.primaryUser = "gyoge";
          home-manager.users.gyoge.imports = lib.concatMap builtins.attrValues (
            with config.flake.modules.home;
            [
              shell
              languages
              nvim
            ]
          );
        }
      ];
  };
  flake.packages.aarch64-darwin =
    let
      mbp = config.flake.darwinConfigurations.mbp.system;
    in
    {
      default = mbp;
      mbp = mbp;
    };
}
