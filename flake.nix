{
  description = "A very mmoooooo flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in
        {

          defaultPackage = pkgs.stdenv.mkDerivation {
            name = "cowflake";
            src = ./cowflake.sh;
            nativeBuildInputs = [ pkgs.makeWrapper ];
            builder = ./builderflake.sh;
            cowsay = pkgs.cowsay;
          };
        }
    );
}
