let
  pkgs = import <nixpkgs> { };
in
pkgs.buildGoModule {
  pname = "go-example";
  version = "0.0.0";
  src = ./.;
  vendorHash = null;
}
