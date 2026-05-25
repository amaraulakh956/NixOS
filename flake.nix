{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgsveryold.url = "github:nixos/nixpkgs?ref=nixos-21.11";
    niri.url = "github:sodiboo/niri-flake";
    stylix.url = "github:danth/stylix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    quickshell = {
  url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
  inputs.nixpkgs.follows = "nixpkgs";
};

helium = {
      url = "github:AlvaroParker/helium-nix";
      inputs.nixpkgs.follows = "nixpkgs";
};

  };

  outputs = {self, nixpkgs, niri, stylix, ... } @ inputs:
let


in
 {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
    
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
     specialArgs = {inherit inputs ; };
      modules =[
        
        niri.nixosModules.niri
        stylix.nixosModules.stylix
       ./configuration.nix
      
       # inputs.stylix.nixosModules.stylix
        
     ({pkgs,...}:{

       })
     ];
    };
   };
}
