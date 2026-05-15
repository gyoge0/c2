{ ... }:
{
  flake.modules.darwin.base.security.security = {
    pam.services.sudo_local.enable = true;
    pam.services.sudo_local.touchIdAuth = true;
  };
}
