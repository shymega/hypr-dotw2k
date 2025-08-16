{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  };

  outputs = inputs:
    let
      inherit (inputs) self nixpkgs;
    in
    {
      configs = { };
      folders = {
        ags = "${self}/.config/ags";
      };
    };
}
