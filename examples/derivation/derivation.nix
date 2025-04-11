let
  pkgs = import <nixpkgs> { };
in

derivation {
  name = "hello-script";
  # e.g. x86_64-linux
  system = builtins.currentSystem;
  builder = "${pkgs.bash}/bin/bash";
  src = ./hello.sh;
  args = [
    "-c"
    ''
      ${pkgs.coreutils}/bin/mkdir -p $out/bin
      ${pkgs.coreutils}/bin/cp $src $out/bin/hello
      ${pkgs.coreutils}/bin/chmod +x $out/bin/hello
    ''
  ];
}
