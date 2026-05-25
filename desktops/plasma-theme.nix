{ config, pkgs, ... }:
{
  gtk = {
    enable = true;
    font = {
      name = "Noto Sans";
      size = 11;
    };
    iconTheme = {
      name = "Tela";
      package = pkgs.tela-icon-theme;
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    name = "Adwaita";
    package = pkgs.adwaita-icon-theme;
    size = 24;
  };
}
