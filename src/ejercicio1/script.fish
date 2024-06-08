#! /usr/bin/env nix-shell
#! nix-shell -i fish --pure
#! nix-shell -p fish mongosh mongodb-tools

mongosh < .delete.js

echo -e "\n\n\nLoading data (item A)...\n\n"
./item_a.sh
echo -e "\n\n"

echo -e "\n\n\nRunning query (item B)...\n\n"
mongosh < item_b.js
echo -e "\n\n"

echo -e "\n\n\nUpdating docs (item C)...\n\n"
mongosh < item_c.js
echo -e "\n\n"

echo -e "\n\n\nRunning query (item D)...\n\n"
mongosh < item_d.js
echo -e "\n\n"
