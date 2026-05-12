# Mineria de datos: Weka y KNN

Weka y KNN no son sistemas expertos clasicos, pero son herramientas utiles en cursos de Sistemas Expertos porque apoyan tareas de clasificacion y toma de decisiones. Mientras un sistema experto basado en reglas usa conocimiento explicito, un clasificador aprende o calcula patrones a partir de datos.

## Weka

Weka es una plataforma de software libre para aprendizaje automatico y mineria de datos desarrollada en la Universidad de Waikato. El material original destaca estas caracteristicas:

- esta implementada en Java;
- es portable entre plataformas;
- incluye herramientas de visualizacion, preprocesamiento y modelado;
- soporta tareas como clasificacion, clustering, regresion, seleccion de atributos y visualizacion;
- trabaja principalmente con datos en formato tabular;
- puede conectarse a bases de datos mediante JDBC.

El PDF referencia el conjunto de datos `glass.arff`:

```text
https://storm.cis.fordham.edu/~gweiss/data-mining/weka-data/glass.arff
```

## KNN

KNN, o k vecinos mas cercanos, clasifica un caso nuevo comparandolo con ejemplos ya etiquetados. La clase predicha suele ser la clase mayoritaria entre los `k` vecinos mas cercanos segun una medida de distancia.

Pasos generales:

1. Representar cada caso como vector de caracteristicas.
2. Elegir un valor de `k`.
3. Calcular la distancia entre el caso de prueba y los casos de entrenamiento.
4. Seleccionar los `k` vecinos mas cercanos.
5. Asignar la clase por votacion.

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

## Observacion de compatibilidad

El script usa funciones de APOC y una llamada antigua de Graph Data Science: `gds.alpha.similarity.euclideanDistance`. En versiones modernas de Neo4j puede requerir adaptar esa funcion segun la version instalada.
