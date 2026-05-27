
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

imports = [
  ./desktops/hyprland-theme.nix
  # ./desktops/plasma-theme.nix
  #./desktops/niri-theme.nix
#./desktops/hyprland.nix
];

#home.file.".gtkrc-2.0".force = true;

programs.bash.shellAliases = {
  save = "cd ~/myflake && git add . && git commit -m 'update config' && git push";
};

home.packages = with pkgs; [
ani-cli
auto-cpufreq
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
#vscode
vscodium
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
lutris-unwrapped
bottles-unwrapped
pkgs.kdePackages.qt6ct
pkgs.libsForQt5.qt5ct
librepods
librewolf
wob
pavucontrol
#inputs.helium.packages.${pkgs.system}.default
 papirus-icon-theme
bibata-cursors
tela-icon-theme
adwaita-icon-theme
pkgs.minecraftia
nerd-fonts.jetbrains-mono
alacritty
thunar
blueman
bluejay
bluebubbles

];

home.sessionVariables = {
	STEAM_EXTRA_COMPAT_TOOLS_PATHS = 
         "\${HOME}/.steam/root/compatibilitytools.d";
};


  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
      };
      display = {
        color = "blue";
      };
      modules = [
        "os"
        "kernel"
        "uptime"
        "packages"
        "shell"
        "de"
        "wm"
        "theme"
        "font"
        "cpu"
        "gpu"
        "memory"
        "swap"
        "battery"
        "disk"
        "localip"
        "locale"
      ];
    };
  };

 fonts.fontconfig.enable = true;




  home.stateVersion = "25.11";
}
