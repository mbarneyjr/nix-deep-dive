# examples/code1.nix
let
  should_add = true;
  a = 1;
  y = {
    inherit a;
    b = 3;
  };
in
if should_add then
  with y;
  {
    foo = a + b;
  }
else
  with y;
  {
    foo = a - b;
  }
