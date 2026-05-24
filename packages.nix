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
brightnessctl
playerctl
hypridle
fcitx5
quickshell
#kdePackages.spectacle
#kdePackages.kirigami
#kdePackages.qqc2-desktop-style
#kdePackages.kiconthemes
#kdePackages.breeze
# qt6.qtdeclarative
  ];
}


