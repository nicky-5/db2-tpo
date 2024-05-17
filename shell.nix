{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
     mongosh
     mongodb-tools
     neo4j
     redli
  ];

  shellHook = ''
    alias redis-cli='redli'
  '';
}
