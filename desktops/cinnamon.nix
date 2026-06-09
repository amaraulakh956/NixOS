{ config, pkgs, ... }:

{
 services.xserver.desktopManager.cinnamon.enable = false;
 services.xserver.displayManager.lightdm.enable = true;
 
 services.logind = {
    lidSwitch = "suspend";
    lidSwitchExternalPower = "suspend";
    settings.Login = {
      HandlePowerKey = "suspend";
      HandleSuspendKey = "suspend";
    };
  };
}