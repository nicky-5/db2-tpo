#! /usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p redli

echo "Number of members"
echo "ZCOUNT bataxi -inf +inf" | redli
