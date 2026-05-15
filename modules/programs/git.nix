{
  flake.modules.home.gyoge.git = {
    programs.git = {
      enable = true;
      lfs.enable = true;
      # todo: don't hardcode this
      signing = {
        key = "~/.ssh/id_ed25519.pub";
        signByDefault = true;
      };
      settings = {
        gpg.format = "ssh";
        commit.gpgsign = true;
        tag.gpgsign = true;
        core.autocrlf = "input";
        user.name = "Yogesh Thambidurai";
        user.email = "yogesh@gyoge.com";
      };
    };
  };
}
