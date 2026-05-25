{
  flake.modules.nixvim.base.lsp = {
    plugins.lspconfig.enable = true;
    lsp = {
      servers = {
        nil_ls.enable = true;
        beancount.enable = true;
      };
    };
  };
}
