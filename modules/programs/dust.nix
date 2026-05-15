{
  flake.modules.home.base.dust =
    { pkgs, ... }:
    {
      home.packages = [
        pkgs.dust
      ];
    };
}
