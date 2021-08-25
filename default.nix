with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "blog";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "blog";
  buildInputs = [gems ruby];
}

