{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation {
  name = "matterircd-env";
  buildInputs = import ./default.nix;
}
