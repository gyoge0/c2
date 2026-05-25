{ config, ... }:
{
  flake.modules.darwin.gyoge.gyoge = {
    users.users.gyoge = {
      name = "gyoge";
      description = "Yogesh Thambidurai";
      home = "/Users/gyoge";
    };
    home-manager.users.gyoge = {
      home.stateVersion = "25.11";
      home.username = "gyoge";
      home.homeDirectory = "/Users/gyoge";
      imports = builtins.attrValues config.flake.modules.home.gyoge;
    };
  };
}
