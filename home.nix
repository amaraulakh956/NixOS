{ config, pkgs, inputs, ... }:

{
  home.username = "amar";
  home.homeDirectory = "/home/amar";

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "electron-39.8.10"
  ];

  imports = [
    #./desktops/hyprland-theme.nix
    #./desktops/plasma-theme.nix
    #./desktops/niri-theme.nix
  ];

  programs.bash = {
    enable = true;
    bashrcExtra = ''
      fastfetch
    '';
    shellAliases = {
      save = "cd ~/myflake && git add . && git commit -m 'update config' && git push";
    };
  };

  home.packages = with pkgs; [
    ani-cli
    auto-cpufreq
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
    nextcloud-client
    nixd
    alejandra
    qbittorrent
    realvnc-vnc-viewer
    remmina
    rnote
    swww
    tailscale
    tmux
    upower
    vesktop
    vscodium
    winboat
    zoom-us
    brightnessctl
    hypridle
    waypaper
    protonup-ng
    mangohud
    kdePackages.qt6ct
    libsForQt5.qt5ct
    wob
    pavucontrol
    papirus-icon-theme
    bibata-cursors
    tela-icon-theme
    adwaita-icon-theme
    minecraftia
    nerd-fonts.jetbrains-mono
    alacritty
    thunar
    blueman
    bluejay
    localsend
    claude-code
    kdePackages.ark
    brave
    onboard
    obsidian
    proton-vpn
    termius
    freecad
    gnome-terminal
    loupe
    vlc
    virt-manager
    nicotine-plus
    waydroid
    tor-browser
    thunderbird
    kdePackages.kalk
    inputs.brave-origin.packages.x86_64-linux.brave-origin-nightly
  ];

 home.sessionVariables = {
  STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/amar/.steam/root/compatibilitytools.d";
};
  programs.fastfetch = {
    enable = true;
    settings = {
      logo.source = "nixos_medium";
      display.color = "blue";
      modules = [
        "os" "kernel" "uptime" "packages" "shell"
        "de" "wm" "theme" "font" "cpu" "gpu"
        "memory" "swap" "battery" "disk" "localip" "locale"
      ];
    };
  };

  fonts.fontconfig.enable = true;

  home.stateVersion = "25.11";
}