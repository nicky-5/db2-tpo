#! /usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p redli

awk -F ',' 'FNR > 1 {print "GEOADD bataxi "$6" "$7" "$1}' ../../data/bataxi.csv | redli
