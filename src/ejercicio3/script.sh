#! /usr/bin/env bash

echo "Cleaning database..."
./.delete.sh > /dev/null

echo "Loading data (item A)..."
./a.sh > /dev/null

echo -e "\n\n\nRunning query (item B)..."
./b.fish

echo -e "\n\n\nRunning query (item C)..."
./c.sh

echo -e "\n\n\nRunning query (item D)..."
./d.sh

echo -e "\n\n\nRedis sorted sets (item E)"
echo "A Redis sorted set is a collection of unique strings (members) ordered by an associated score."
echo "https://redis.io/docs/latest/develop/data-types/sorted-sets/"
