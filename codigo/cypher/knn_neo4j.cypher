// KNN en Neo4j derivado de "Algoritmo KNN.pdf".
// Requiere APOC y Graph Data Science. La funcion gds.alpha puede variar segun version.

// 1. Cargar datos.
LOAD CSV FROM "http://archive.ics.uci.edu/ml/machine-learning-databases/voting-records/house-votes-84.data" AS row
CREATE (p:Person)
SET p.class = row[0],
    p.features = row[1..];

// 2. Contar registros con votos faltantes.
MATCH (n:Person)
WHERE "?" IN n.features
RETURN count(n) AS registros_con_faltantes;

// 3. Distribucion de votos faltantes por miembro.
MATCH (p:Person)
WHERE "?" IN p.features
WITH p, apoc.coll.occurrences(p.features, "?") AS missing
RETURN missing, count(*) AS times
ORDER BY missing ASC;

// 4. Eliminar registros con mas de seis votos faltantes.
MATCH (p:Person)
WITH p, apoc.coll.occurrences(p.features, "?") AS missing
WHERE missing > 6
DELETE p;

// 5. Marcar nodos de entrenamiento.
MATCH (p:Person)
WITH p
LIMIT 344
SET p:Training;

// 6. Marcar nodos de prueba.
MATCH (p:Person)
WITH p
SKIP 344
SET p:Test;

// 7. Transformar atributos a vector numerico.
MATCH (n:Person)
UNWIND n.features AS feature
WITH n, collect(
  CASE feature
    WHEN "y" THEN 1
    WHEN "n" THEN 0
    ELSE 0.5
  END
) AS feature_vector
SET n.feature_vector = feature_vector;

// 8. Aplicar KNN con k = 3 y medir exactitud.
MATCH (test:Test)
WITH test, test.feature_vector AS feature_vector
CALL apoc.cypher.run(
  "MATCH (training:Training)
   WITH training,
        gds.alpha.similarity.euclideanDistance($feature_vector, training.feature_vector) AS similarity
   ORDER BY similarity ASC
   LIMIT 3
   RETURN collect(training.class) AS classes",
  {feature_vector: feature_vector}
) YIELD value
WITH test.class AS class,
     apoc.coll.sortMaps(apoc.coll.frequencies(value.classes), "^count")[-1].item AS predicted_class
WITH sum(CASE WHEN class = predicted_class THEN 1 ELSE 0 END) AS correct_predictions,
     count(*) AS total_predictions
RETURN correct_predictions,
       total_predictions,
       correct_predictions / toFloat(total_predictions) AS ratio;
