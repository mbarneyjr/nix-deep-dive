{
  description = "Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      awsume-overlay = import ./awsume-overlay.nix;

      app =
        { system }:
        {
          present = {
            type = "app";
            program = ./scripts/present.sh;
          };
          speaker = {
            type = "app";
            program = ./scripts/speaker.sh;
          };
        };
      shell =
        { system }:
        let
          pkgs = import nixpkgs {
            system = system;
            config = {
              allowUnfree = true;
            };
          };
        in
        pkgs.mkShell {
          packages = [
            pkgs.presenterm
          ];
        };
    in
    {
      devShells.aarch64-darwin.default = shell { system = "aarch64-darwin"; };
      devShells.x86_64-darwin.default = shell { system = "x86_64-darwin"; };
      devShells.aarch64-linux.default = shell { system = "aarch64-linux"; };
      devShells.x86_64-linux.default = shell { system = "x86_64-linux"; };
      apps.aarch64-darwin = app { system = "aarch64-darwin"; };
      apps.x86_64-darwin = app { system = "x86_64-darwin"; };
      apps.aarch64-linux = app { system = "aarch64-linux"; };
      apps.x86_64-linux = app { system = "x86_64-linux"; };
    };
}
