#! /usr/bin/env nix-shell
#! nix-shell -i fish --pure
#! nix-shell -p fish mongosh mongodb-tools

echo -e "Cleaning database..."
mongosh < .delete.js

rm out_*.txt 2>/dev/null

echo -e "\n\n\nLoading data (item A)...\n\n"
./item_a.sh
echo -e "\n\n"

echo -e "\n\n\nRunning query (item B)...\n\n"
mongosh < item_b.js | tee out_b.txt
echo -e "\n\n"

echo -e "\n\n\nUpdating docs (item C)...\n\n"
mongosh < item_c.js | tee out_c.txt
echo -e "\n\n"

echo -e "\n\n\nRunning query (item D)...\n\n"
mongosh < item_d.js | tee out_d.txt
echo -e "\n\n"
