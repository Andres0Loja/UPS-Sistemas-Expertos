# Sistemas Expertos

Repositorio academico organizado para estudiar ejemplos de Sistemas Expertos, reglas de inferencia, probabilidad, Bayes, redes bayesianas y herramientas de mineria de datos.

## Contenido

- `docs/`: resumenes y guias de estudio en Markdown.
- `codigo/clips/`: ejemplos derivados de los materiales originales en CLIPS.
- `codigo/cypher/`: ejemplo KNN en Neo4j/Cypher.
- `codigo/xmlbif/`: redes bayesianas en formato XMLBIF.
- `notebooks/`: notebook Jupyter con una calculadora de Bayes.
- `assets/imagenes/`: imagenes usadas por los notebooks o documentos.
- `referencias/`: PDFs y TXT originales conservados como respaldo.

## Temas principales

- Sistemas basados en reglas.
- Representacion del conocimiento mediante hechos y reglas.
- Inferencia con reglas de produccion.
- Funciones y ejemplos practicos en CLIPS.
- Probabilidad condicional, regla multiplicativa y teorema de Bayes.
- Redes bayesianas en XMLBIF.
- Weka como herramienta de mineria de datos.
- Clasificacion KNN con Neo4j.

## Ruta recomendada

1. Revisar `docs/00_inventario.md` para conocer el origen y estado de cada archivo.
2. Leer `docs/01_guia_estudio.md` como mapa general.
3. Estudiar `docs/02_sistemas_basados_en_reglas.md` y los ejemplos de `codigo/clips/`.
4. Continuar con `docs/03_probabilidad_bayes.md` y ejecutar `notebooks/calculadora_bayes.ipynb`.
5. Consultar `docs/05_redes_bayesianas.md` junto con `codigo/xmlbif/`.
6. Revisar `docs/04_mineria_datos_weka_knn.md` para Weka y KNN.

## Ejecucion de ejemplos

### Notebook de Bayes

Requisitos:

- Python 3.
- Jupyter Notebook o JupyterLab.

Ejecutar:

```bash
jupyter notebook notebooks/calculadora_bayes.ipynb
```

El notebook calcula `P(A|B)` con el teorema de Bayes y reproduce el ejercicio de diagnostico medico incluido en el material original.

### Ejemplos CLIPS

Requisito:

- CLIPS instalado.

Los archivos estan en `codigo/clips/`. Pueden cargarse desde CLIPS segun el entorno disponible:

```clips
(load "codigo/clips/reglas_letras.clp")
(reset)
(run)
```

Nota: `codigo/clips/operaciones_numericas_pendiente.clp` no debe considerarse ejecutable; conserva un borrador con sintaxis dudosa del material original.

### KNN en Neo4j

Requisitos:

- Neo4j.
- Plugin APOC.
- Graph Data Science compatible con la funcion de distancia usada en el script.

Archivo:

```text
codigo/cypher/knn_neo4j.cypher
```

El script carga datos de votaciones del Congreso de Estados Unidos, transforma respuestas en vectores y clasifica nodos de prueba con KNN.

## Referencias originales

Los documentos originales estan en:

- `referencias/pdf_originales/`
- `referencias/textos_originales/`

No se eliminaron fuentes importantes. Los duplicados y materiales pendientes estan documentados en `docs/00_inventario.md`.
