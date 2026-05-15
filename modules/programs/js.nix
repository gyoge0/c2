{
  flake.modules.home.languages.js =
    { pkgs, ... }:
    {
      home.packages = [
        pkgs.pnpm
        pkgs.nodejs_24
      ];
    };
}
