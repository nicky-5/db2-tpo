{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = with pkgs; [
     mongosh
     mongodb-tools
     neo4j
     redli
     fish
     jq
  ];
}
