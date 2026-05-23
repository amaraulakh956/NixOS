{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgsveryold.url = "github:nixos/nixpkgs?ref=nixos-21.11";
    niri.url = "github:sodiboo/niri-flake";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, niri,  ... } @ inputs:
let


in
 {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
    
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
     specialArgs = {inherit inputs ; };
      modules =[
       ./configuration.nix
        niri.nixosModules.niri
     ({pkgs,...}:{

       })
     ];
    };
   };
}
