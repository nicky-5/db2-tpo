#! /usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p redli

echo "Number of keys"
echo "DBSIZE" | redli
