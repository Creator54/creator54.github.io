with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "creator54.github.io";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "creator54.github.io";
  buildInputs = [gems ruby];
}

