{ ani-cli, auto-cpufreq, bluejay, brave, fastfetch, feishin, gearlever, heroic, hyprpaper, hyprshot, jellyfin-desktop, kicad, kitty, labwc, libreoffice-fresh, neovim, netbeans, nextcloud-client, nixd, pkgs, qbittorrent, quickshell, realvnc-vnc-viewer, remmina, rnote, swww, tailscale, tmux, upower, vesktop, vscode, winboat, zoom-us }:
{
  home.username = "amar";
  home.homeDirectory = "/home/amar";

  nixpkgs.config.allowUnfree = true;

  services.awww.enable = true;

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
kitty
fastfetch
winboat
libreoffice-fresh
rnote
vesktop
nextcloud-client
heroic
gearlever
netbeans
vscode
feishin
jellyfin-desktop
tailscale
brave
zoom-us
remmina
realvnc-vnc-viewer
kicad
qbittorrent
ani-cli
bluejay
auto-cpufreq
labwc
quickshell
upower
neovim
tmux
swww
hyprpaper
hyprshot
nixd
}
