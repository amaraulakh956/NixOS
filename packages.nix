{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
      wget
home-manager
  
  #kitty
  #fastfetch
 #winboat
  #rnote
  btop
  #libreoffice-fresh
  #vesktop
  #nextcloud-client
  #heroic
  #gearlever
 #netbeans
#vscode
#vscodium
git
pkgs.javaPackages.compiler.openjdk25
#feishin
#jellyfin-desktop
#tailscale
iw
curl
#brave
# brave-origin-nightly
#zoom-us
#remmina
#realvnc-vnc-viewer
#kicad
gnumake
makeself
#nur.repos.chiasson.librepods
#nur.repos.lonerOrz.helium
#qbittorrent
#ani-cli
#networkManager
zip
fuzzel
#bluejay
#auto-cpufreq
#labwc
waybar
wofi
pwvucontrol
 
  ];
}


