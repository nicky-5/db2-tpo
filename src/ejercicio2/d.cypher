MATCH (s:Supplier {country: "UK"})-[:SUPPLIES]->(p:Product)
RETURN p.productName, p.unitPrice
ORDER BY p.unitPrice DESC
LIMIT 3
