{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
     mongosh
     mongodb-tools
     redli
  ];

  shellHook = ''
    alias redis-cli='redli'
  '';
}
