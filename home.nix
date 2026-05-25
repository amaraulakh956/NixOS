
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

#home.file.".gtkrc-2.0".force = true;

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

 



imports = [
    #./desktops/hyprland.nix
  ];

  home.stateVersion = "25.11";
}
