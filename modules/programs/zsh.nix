{
  flake.modules.home.base.zsh = {
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      shellAliases = {
        ls = "ls -CF --color=auto";
        la = "ls -CFA --color=auto";
        ll = "ls -lFa --color=auto";
        upr = "source ~/.zshrc";
        epr = "$EDITOR ~/.zshrc";
        # nix flakes uses # a lot which zsh doesn't like
        nix = "noglob nix";
      };
      history = {
        ignoreDups = true;
        ignoreSpace = true;
        size = 10000;
        save = 10000;
      };
      # enable some useful zsh features
      initContent = ''
        # extended globbing
        setopt EXTENDED_GLOB
        # auto pushd
        setopt AUTO_PUSHD
        # correct command suggestions
        setopt CORRECT
      '';
    };
  };
}
