# Sistemas Expertos

Repositorio academico organizado para estudiar Sistemas Expertos, reglas de inferencia, probabilidad, Bayes, redes bayesianas y herramientas de clasificacion relacionadas.

## Contenido

- `docs/`: guias de estudio, inventario y resumenes teoricos.
- `codigo/clips/`: ejemplos de reglas y funciones en CLIPS.
- `codigo/python/`: motor de inferencia didactico ejecutable con Python.
- `codigo/cypher/`: ejemplo KNN en Neo4j/Cypher.
- `codigo/xmlbif/`: redes bayesianas en formato XMLBIF.
- `notebooks/`: notebook Jupyter con una calculadora de Bayes.
- `assets/imagenes/`: imagenes usadas por notebooks o documentos.
- `referencias/`: PDFs y TXT originales conservados como respaldo.

## Ruta de estudio

1. Leer `docs/01_guia_estudio.md`.
2. Estudiar `docs/02_sistemas_basados_en_reglas.md`.
3. Leer `docs/06_motor_inferencia_python.md` y ejecutar `codigo/python/motor_inferencia.py` para observar encadenamiento hacia adelante.
4. Revisar los ejemplos CLIPS en `codigo/clips/`.
5. Leer `docs/03_probabilidad_bayes.md` y ejecutar `notebooks/calculadora_bayes.ipynb`.
6. Revisar `docs/05_redes_bayesianas.md` junto con `codigo/xmlbif/`.
7. Consultar `docs/04_mineria_datos_weka_knn.md` para Weka y KNN.
8. Usar `docs/00_inventario.md` para ubicar fuentes originales, duplicados y pendientes.

## Ejecucion de ejemplos

### Python: motor de inferencia

Requisito: Python 3.

```bash
python codigo/python/motor_inferencia.py
```

Este ejemplo replica las reglas de letras con encadenamiento hacia adelante y muestra una traza de inferencia.

### Notebook de Bayes

Requisitos:

- Python 3.
- Jupyter Notebook o JupyterLab.

```bash
jupyter notebook notebooks/calculadora_bayes.ipynb
```

El notebook calcula `P(A|B)` con Bayes, valida entradas y reproduce el ejercicio de diagnostico medico incluido en el material original.

### Ejemplos CLIPS

Requisito: CLIPS instalado.

Ejemplo:

```clips
(load "codigo/clips/reglas_letras.clp")
(reset)
(run)
```

Archivos principales:

- `reglas_letras.clp`: encadenamiento hacia adelante.
- `relaciones_familiares.clp`: inferencia de parentescos.
- `triangulos.clp`: clasificacion por reglas.
- `fibonacci_primo.clp`: funciones y validaciones numericas.
- `operaciones_numericas.clp`: minimo, maximo, pares e impares.

`operaciones_numericas_pendiente.clp` conserva un borrador original con sintaxis dudosa y no debe usarse como ejemplo ejecutable.

### KNN en Neo4j

Requisitos:

- Neo4j.
- Plugin APOC.
- Graph Data Science compatible con la funcion de distancia usada.

Archivo:

```text
codigo/cypher/knn_neo4j.cypher
```

El script carga datos de votaciones, transforma respuestas en vectores y clasifica nodos de prueba con KNN.

## Referencias originales

Los documentos originales estan en:

- `referencias/pdf_originales/`
- `referencias/textos_originales/`

No se eliminaron fuentes importantes. Los duplicados, correcciones y pendientes estan documentados en `docs/00_inventario.md`.
