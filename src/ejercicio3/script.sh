#! /usr/bin/env bash

echo "Cleaning database..."
./.delete.sh > /dev/null

echo "Loading data (A)..."
./a.sh > /dev/null

echo -e "\n\nRunning query B..."
./b.fish

echo -e "\n\nRunning query C..."
./c.sh

echo -e "\n\nRunning query D..."
./d.sh

echo -e "\n\nRedis sorted sets (E)"
echo "A Redis sorted set is a collection of unique strings (members) ordered by an associated score."
echo "https://redis.io/docs/latest/develop/data-types/sorted-sets/"
