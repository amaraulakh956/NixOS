{ config, pkgs, lib, ... }:
{
  gtk = {
    enable = true;
    font =lib.mkForce {
      name = "Minecraftia";
      size = 11;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };
  dconf.settings."org/gnome/desktop/interface".font-name = lib.mkForce "Minecraftia 11";
}
