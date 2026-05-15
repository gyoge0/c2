{
  flake.modules.darwin.base.keyboard.system = {
    defaults.NSGlobalDomain.InitialKeyRepeat = 30;
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
}
