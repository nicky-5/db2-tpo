MATCH (n)
DETACH DELETE n;

DROP INDEX productID IF EXISTS;
DROP INDEX productName IF EXISTS;
DROP INDEX categoryID IF EXISTS;
DROP INDEX supplierID IF EXISTS;
