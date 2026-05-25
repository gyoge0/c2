{
  flake.modules.nixvim.base.trouble.plugins = {
    # dependency
    web-devicons.enable = true;

    trouble = {
      enable = true;
      settings = {
        indent_guides = false;
        keys = {
          # doesn't work yet for some reason
          # "<S-Esc>" = "close";
        };
      };
    };
  };
}
