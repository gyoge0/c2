{
  flake.modules.home.base.sd =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        sd
      ];
    };
}
