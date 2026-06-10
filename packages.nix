{ config, pkgs,inputs, ... }:

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
brightnessctl
playerctl
hypridle
fcitx5
quickshell
 #inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
hyprpolkitagent
swayosd #volume and brightness indicator
inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
wev
dnsmasq 

#GNOME section
   # gnomeExtensions.blur-my-shell
    #gnomeExtensions.just-perfection
    #gnomeExtensions.arc-menu
  ];
}


