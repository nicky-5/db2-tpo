#! /usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p neo4j

echo -e "Cleaning database..."
cypher-shell -f .delete.cypher > /dev/null

rm out_*.txt 2>/dev/null

echo -e "Loading data..."
cypher-shell -f .load.cypher > /dev/null

echo -e "\n\n\nRunning query (item A)..."
cypher-shell -f a.cypher | tee out_a.txt

echo -e "\n\n\nRunning query (item B)..."
cypher-shell -f b.cypher | tee out_b.txt

echo -e "\n\n\nRunning query (item C)..."
cypher-shell -f c.cypher | tee out_c.txt

echo -e "\n\n\nRunning query (item D)..."
cypher-shell -f d.cypher | tee out_d.txt
