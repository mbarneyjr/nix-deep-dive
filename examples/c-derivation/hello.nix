with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "hello";
  src = ./hello.c;
  buildCommand = "mkdir -p $out/bin/ && ${gcc}/bin/gcc $src -o $out/bin/hello";
}
