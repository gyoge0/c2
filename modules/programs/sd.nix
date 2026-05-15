{
  flake.modules.home.shell.sd =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        sd
      ];
    };
}
