{
  flake.modules.darwin.base.ssh-keychain = {
    launchd.user.agents.ssh-keychain = {
      command = "ssh-add --apple-load-keychain";
      serviceConfig = {
        RunAtLoad = true;
        KeepAlive = false;
      };
    };
  };
}
