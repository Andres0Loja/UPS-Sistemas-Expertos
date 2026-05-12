# Mineria de datos: Weka y KNN

El repositorio contiene dos materiales relacionados con mineria de datos: un resumen de Weka y un procedimiento KNN implementado con Neo4j/Cypher.

## Weka

Weka es una plataforma de software libre para aprendizaje automatico y mineria de datos desarrollada en la Universidad de Waikato. El material original destaca estas caracteristicas:

- esta implementada en Java;
- es portable entre plataformas;
- incluye herramientas de visualizacion, preprocesamiento y modelado;
- soporta tareas como clasificacion, clustering, regresion, seleccion de atributos y visualizacion;
- trabaja principalmente con datos en formato tabular;
- puede conectarse a bases de datos mediante JDBC.

El PDF tambien referencia el conjunto de datos `glass.arff`:

```text
https://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/glass.arff
```

## KNN en Neo4j

Archivo derivado: `codigo/cypher/knn_neo4j.cypher`.

El flujo del PDF `algoritmo_knn.pdf` realiza estos pasos:

1. Cargar el dataset `house-votes-84` desde UCI.
2. Crear nodos `Person` con clase y atributos.
3. Contar registros con votos faltantes.
4. Eliminar registros con mas de seis valores desconocidos.
5. Dividir los nodos entre entrenamiento y prueba.
6. Convertir votos `y`, `n` y `?` en un vector numerico.
7. Calcular distancia euclidiana contra los registros de entrenamiento.
8. Predecir la clase por mayoria entre los tres vecinos mas cercanos.
9. Calcular la proporcion de predicciones correctas.

## Requisitos del ejemplo KNN

El script usa funciones de APOC y Graph Data Science antiguas (`gds.alpha.similarity.euclideanDistance`). Si se ejecuta en una version moderna de Neo4j, puede requerir adaptar la llamada de similitud segun la version instalada.
