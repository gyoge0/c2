{ lib, ... }:
{
  options.flake.modules = lib.mkOption {
    type = lib.types.lazyAttrsOf (
      lib.types.lazyAttrsOf (
        lib.types.lazyAttrsOf (lib.types.either lib.types.attrs (lib.types.functionTo lib.types.attrs))
      )
    );
    default = { };
  };
}
