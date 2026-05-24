
{ config, pkgs, ... }:



{
  home.username = "amar";
  home.homeDirectory = "/home/amar";

  nixpkgs.config.allowUnfree = true;

programs.bash = {
  enable = true;
  bashrcExtra = ''
    fastfetch
  '';
};

programs.bash.shellAliases = {
  save = "cd ~/myflake && git add . && git commit -m 'update config' && git push";
};

home.packages = with pkgs; [
ani-cli
auto-cpufreq
bluejay
brave
fastfetch
feishin
gearlever
heroic
hyprpaper
hyprshot
jellyfin-desktop
kicad
kitty
labwc
libreoffice-fresh
neovim
netbeans
nextcloud-client
nixd
qbittorrent
realvnc-vnc-viewer
remmina
rnote
swww
tailscale
tmux
upower
vesktop
vscode
winboat
zoom-us
#stylix
brightnessctl
hypridle
waypaper
protonup-ng
mangohud
#lutris
#bottles

];

home.sessionVariables = {
	STEAM_EXTRA_COMPAT_TOOLS_PATHS = 
         "\${HOME}/.steam/root/compatibilitytools.d";
};

imports = [
    #./desktops/hyprland.nix
  ];

  home.stateVersion = "25.11";
}
