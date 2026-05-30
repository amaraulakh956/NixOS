{ config, pkgs, ... }:

{ 
services.desktopManager.plasma6.enable = false;
services.displayManager.sddm.enable = false;

}