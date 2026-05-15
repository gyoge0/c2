{
  flake.modules.home.base.claude =
    { pkgs, ... }:
    {
      programs.claude-code = {
        enable = true;
        package = pkgs.unstable.claude-code;
      };
    };
}
