{ config, pkgs, ... }:

{
 services.xserver.desktopManager.cinnamon.enable = false;
 services.xserver.displayManager.lightdm.enable = false;
 
 services.logind = {
    lidSwitch = "suspend";
    lidSwitchExternalPower = "suspend";
    settings.Login = {
      HandlePowerKey = "suspend";
      HandleSuspendKey = "suspend";
    };
  };
}