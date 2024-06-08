#! /usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p neo4j

echo -e "Cleaning database..."
cypher-shell -f .delete.cypher > /dev/null

echo -e "Loading data..."
cypher-shell -f .load.cypher > /dev/null

echo -e "\n\n\nRunning query (item A)..."
cypher-shell -f a.cypher

echo -e "\n\n\nRunning query (item B)..."
cypher-shell -f b.cypher

echo -e "\n\n\nRunning query (item C)..."
cypher-shell -f c.cypher

echo -e "\n\n\nRunning query (item D)..."
cypher-shell -f d.cypher
