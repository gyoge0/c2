{
  flake.modules.home.shell.dust =
    { pkgs, ... }:
    {
      home.packages = [
        pkgs.dust
      ];
    };
}
