# Guia de estudio

Este repositorio esta organizado como una ruta de estudio progresiva sobre Sistemas Expertos. Parte de los conceptos basicos, continua con reglas de produccion e inferencia, y termina con ejemplos probabilisticos y herramientas de mineria de datos relacionadas.

## Objetivos de aprendizaje

Al revisar el material deberias poder:

- explicar que es un sistema experto y cuales son sus componentes;
- representar conocimiento con hechos y reglas;
- distinguir base de conocimiento, memoria de trabajo y motor de inferencia;
- seguir una traza simple de encadenamiento hacia adelante;
- ejecutar ejemplos CLIPS o estudiar su equivalente en Python;
- aplicar probabilidad condicional y Bayes en problemas de diagnostico;
- reconocer la estructura de una red bayesiana en XMLBIF;
- ubicar Weka y KNN como herramientas complementarias para clasificacion.

## Ruta sugerida

1. Leer `docs/02_sistemas_basados_en_reglas.md` para entender la arquitectura general.
2. Ejecutar `codigo/python/motor_inferencia.py` para observar un motor de inferencia minimo.
3. Revisar los ejemplos CLIPS en `codigo/clips/`, comenzando por `reglas_letras.clp`.
4. Estudiar `docs/03_probabilidad_bayes.md` y ejecutar `notebooks/calculadora_bayes.ipynb`.
5. Revisar `docs/05_redes_bayesianas.md` junto con los archivos `codigo/xmlbif/`.
6. Consultar `docs/04_mineria_datos_weka_knn.md` para relacionar sistemas expertos con clasificacion y apoyo a decisiones.
7. Usar `docs/00_inventario.md` para verificar el origen, estado y calidad de cada fuente.

## Practicas recomendadas

- Despues de leer cada tema, abrir el codigo asociado y ubicar hechos, reglas, condiciones y conclusiones.
- Modificar un hecho inicial y observar como cambia la inferencia.
- En el notebook de Bayes, cambiar la probabilidad previa y comparar la probabilidad posterior.
- En los XMLBIF, identificar que variables son independientes y cuales dependen de otras.

## Criterio de depuracion aplicado

Se separaron fuentes originales y versiones de estudio. Los originales se mantienen en `referencias/`; las versiones limpias o resumidas estan en `docs/`, `codigo/` y `notebooks/`. Cuando el material tenia errores evidentes, se corrigieron en la version derivada. Cuando no habia evidencia suficiente para corregir sin alterar el sentido, se marco como pendiente de revision.
