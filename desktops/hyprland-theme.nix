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

  qt = {
  enable = true;
  platformTheme.name = "qtct";
  style.name = "kvantum";
};

  home.pointerCursor = {
    gtk.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };
  dconf.settings."org/gnome/desktop/interface".font-name = lib.mkForce "Minecraftia 11";
}
