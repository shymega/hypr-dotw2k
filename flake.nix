{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
    hyprland = {
      url = "github:hyprwm/Hyprland?ref=v0.52.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland"; # Prevents version mismatch.
    };
    stylix = {
      url = "github:danth/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    base16-schemes.url = "github:SenchoPens/base16.nix";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    win2k-plymouth.url = "github:Win2K-for-Unix/Win2K-Plymouth";
  };

  outputs = inputs: let
    inherit (inputs) self nixpkgs;
  in {
    configs = {};
    folders = {
      ags = "${self}/.config/ags";
    };
  };
}
