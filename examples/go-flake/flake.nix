{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "aarch64-darwin"; };
    in
    {
      packages.aarch64-darwin.default = pkgs.buildGoModule {
        pname = "go-example";
        version = "0.0.0";
        src = ./.;
        vendorHash = null;
      };
    };
}
