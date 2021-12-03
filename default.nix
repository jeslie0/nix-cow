let build = { stdenv, coreutils, cowsay, makeWrapper }:
      stdenv.mkDerivation {
        name = "cow";
        src = ./cow.sh;
        nativeBuildInputs = [ makeWrapper ];
        builder = ./builder.sh;
        inherit cowsay;
      };
in with (import <nixpkgs> {});
  build { inherit stdenv coreutils cowsay makeWrapper; }
