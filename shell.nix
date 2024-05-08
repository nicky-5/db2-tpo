{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
     mongosh
     mongodb-tools
     redli
  ];
}
