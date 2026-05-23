{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
      wget
home-manager
  

  btop

git
pkgs.javaPackages.compiler.openjdk25
iw
curl
gnumake
makeself
zip
fuzzel
waybar
wofi
pwvucontrol
 
  ];
}


