#! /usr/bin/env nix-shell
#! nix-shell -i fish --pure
#! nix-shell -p fish mongosh mongodb-tools

echo -e "Cleaning database..."
mongosh -f .delete.js

rm out/*.txt 2> /dev/null
mkdir out 2> /dev/null

echo -e "\n\n\nLoading data (item A)..."
./item_a.sh
echo -e "\n\n"

echo -e "\n\n\nRunning query (item B)..."
mongosh --eval "$(cat item_b.js)" | tee out/b.txt
echo -e "\n\n"

echo -e "\n\n\nUpdating docs (item C)..."
mongosh --eval "$(cat item_c.js)" | tee out/c.txt
echo -e "\n\n"

echo -e "\n\n\nRunning query (item D)..."
mongosh --eval "$(cat item_d.js)" | tee out/d.txt
echo -e "\n\n"
