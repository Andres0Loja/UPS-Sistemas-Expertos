# Guia de estudio

El repositorio reune material practico de Sistemas Expertos y temas cercanos: reglas de produccion en CLIPS, inferencia basada en hechos, ejercicios de probabilidad y Bayes, redes bayesianas en XMLBIF, uso de Weka y un flujo KNN en Neo4j.

## Temas principales

1. **Sistemas basados en reglas**: ejemplos CLIPS con hechos, reglas, funciones y clasificacion.
2. **Representacion del conocimiento**: hechos como `(H)`, `(K)`, relaciones familiares y reglas condicionales.
3. **Inferencia**: derivacion de nuevos hechos mediante reglas `defrule`, principalmente con encadenamiento hacia adelante.
4. **Probabilidad y Bayes**: ejercicios de probabilidad condicional, regla multiplicativa y calculo de probabilidad posterior.
5. **Redes bayesianas**: modelos XMLBIF con tablas de probabilidad.
6. **Mineria de datos**: resumen de Weka y ejemplo KNN con Neo4j.

## Ruta sugerida de lectura

1. Leer `docs/02_sistemas_basados_en_reglas.md`.
2. Revisar los ejemplos CLIPS en `codigo/clips/`.
3. Estudiar `docs/03_probabilidad_bayes.md` y ejecutar `notebooks/calculadora_bayes.ipynb`.
4. Revisar `docs/05_redes_bayesianas.md` junto con los archivos XMLBIF.
5. Consultar `docs/04_mineria_datos_weka_knn.md` para Weka y KNN.
6. Usar `docs/00_inventario.md` para ubicar originales, duplicados y pendientes.

## Criterio de depuracion aplicado

Se separaron fuentes originales y versiones de estudio. Los originales se mantienen en `referencias/`; las versiones limpias o resumidas estan en `docs/` y `codigo/`. Cuando el material tenia errores evidentes, se corrigieron en la version derivada y se dejo constancia en el inventario. Cuando no habia evidencia suficiente para corregir, se marco como pendiente.
