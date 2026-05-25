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
 inputs.helium.packages.${system}.default
hyprpolkitagent
  ];
}


