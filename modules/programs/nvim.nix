{
  inputs,
  lib,
  config,
  ...
}:
{
  flake.modules.home.gyoge.nvim = {
    imports = [
      inputs.nixvim.homeModules.nixvim
    ];
    programs.nixvim = {
      enable = true;
      defaultEditor = true;
      imports = lib.concatMap (attrs: builtins.attrValues attrs) (
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
