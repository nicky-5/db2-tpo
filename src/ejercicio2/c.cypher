MATCH (p:Product)-[:PART_OF]->(c:Category {categoryName: "Condiments"})
RETURN count(p) AS numberOfProducts
