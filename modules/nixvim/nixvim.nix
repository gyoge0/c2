{
  inputs,
  config,
  lib,
  ...
}:
{
  perSystem =
    { system, ... }:
    {
      packages.nvim = inputs.nixvim.legacyPackages.${system}.makeNixvimWithModule {
        inherit system;
        module = lib.concatMap (attrs: builtins.attrValues attrs) (
          builtins.filter (attrs: attrs != { }) (
            with config.flake.modules.nixvim;
            [
              base
            ]
          )
        );
      };
    };
}
