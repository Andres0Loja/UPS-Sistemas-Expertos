# Inventario del repositorio

Este inventario resume el contenido encontrado, la accion aplicada y las observaciones de calidad. Los archivos originales no fueron eliminados: se conservaron en `referencias/` para consulta y trazabilidad.

| Archivo original | Ubicacion actual | Tipo | Contenido | Accion |
|---|---|---|---|---|
| `README.md` | `README.md` | Markdown | Titulo minimo del repositorio. | Reescrito como guia principal. |
| `Deber 1 Clips.txt` | `referencias/textos_originales/deber_1_clips.txt` | TXT | Funciones CLIPS para Fibonacci y numero primo. | Convertido a `codigo/clips/fibonacci_primo.clp`. |
| `Fibonassi.pdf` | `referencias/pdf_originales/fibonacci_primo.pdf` | PDF | Mismo contenido que `Deber 1 Clips.txt`. | Conservado como duplicado de respaldo. |
| `Reglas.txt` | `referencias/textos_originales/reglas.txt` | TXT | Reglas CLIPS con hechos iniciales `H` y `K`; activan reglas para derivar `A`, `E`, `B`, `D` y `C`. | Convertido a `codigo/clips/reglas_letras.clp`. |
| `reglas.pdf` | `referencias/pdf_originales/reglas_letras.pdf` | PDF | Mismo contenido que `Reglas.txt`. | Conservado como duplicado de respaldo. |
| `Hijos.txt` | `referencias/textos_originales/hijos.txt` | TXT | Reglas CLIPS sobre parentesco: progenitores, padres, madres, abuelos, hermanos, tios, sobrinos y primos. | Convertido a `codigo/clips/relaciones_familiares.clp` con correcciones menores documentadas. |
| `Triangulos.pdf` | `referencias/pdf_originales/triangulos.pdf` | PDF | Reglas CLIPS para clasificar triangulos por lados y angulos. | Convertido a `codigo/clips/triangulos.clp` con correcciones de sintaxis evidentes. |
| `Operaciones Numericas.txt` | `referencias/textos_originales/operaciones_numericas.txt` | TXT | Borrador CLIPS para ordenar valores numericos. | Conservado como pendiente y complementado con `codigo/clips/operaciones_numericas.clp`, una version funcional para estudio. |
| `Numeros.pdf` | `referencias/pdf_originales/numeros.pdf` | PDF | Mismo contenido que `Operaciones Numericas.txt`. | Conservado como duplicado de respaldo. |
| `Algoritmo KNN.pdf` | `referencias/pdf_originales/algoritmo_knn.pdf` | PDF | Procedimiento KNN en Neo4j/Cypher con datos `house-votes-84`. | Convertido a `codigo/cypher/knn_neo4j.cypher` y resumido. |
| `Segundo/Weka.pdf` | `referencias/pdf_originales/weka.pdf` | PDF | Resumen de Weka, caracteristicas y enlace a `glass.arff`. | Resumido en `docs/04_mineria_datos_weka_knn.md`. |
| `Segundo/Bayes.ipynb` | `notebooks/calculadora_bayes.ipynb` | Notebook | Ejercicio de Bayes sobre diagnostico de cancer. | Reescrito como notebook guiado con formula, validaciones, ejecucion e interpretacion. |
| `Segundo/Probabilidad Condicional.pdf` | `referencias/pdf_originales/probabilidad_condicional.pdf` | PDF escaneado | Ejercicios manuscritos sobre probabilidad condicional, independencia y complementos. | Resumido; marcado como material escaneado de baja legibilidad parcial. |
| `Segundo/Reglas.pdf` | `referencias/pdf_originales/reglas_multiplicativas.pdf` | PDF escaneado | Ejercicios manuscritos sobre regla multiplicativa, Bayes y probabilidad conjunta. | Resumido; marcado como material escaneado de baja legibilidad parcial. |
| `Segundo/Arduino Jefe.pdf` | `referencias/pdf_originales/arduino_jefe_xmlbif.pdf` | PDF | Red bayesiana XMLBIF con variables `Candidatos` y `Sueldo`. | Convertido a `codigo/xmlbif/candidatos_sueldo.xml`. |
| `Segundo/Belief Arduino.pdf` | `referencias/pdf_originales/belief_arduino_xmlbif.pdf` | PDF | Red bayesiana XMLBIF con maquinas, candidatos, barajan y un nodo adicional. | Convertido y corregido en `codigo/xmlbif/belief_arduino.xml`; el significado de `Node 4` queda pendiente de revision. |
| Material complementario | `codigo/python/motor_inferencia.py` | Python | Motor didactico de encadenamiento hacia adelante. | Agregado para disponer de un ejemplo ejecutable sin depender de CLIPS. |

## Duplicados detectados

- `Fibonassi.pdf` duplica el contenido de `Deber 1 Clips.txt`.
- `Numeros.pdf` duplica el contenido de `Operaciones Numericas.txt`.
- `reglas.pdf` duplica el contenido de `Reglas.txt`.

## Material pendiente de revision

- `codigo/clips/operaciones_numericas_pendiente.clp`: contiene palabras que no corresponden a CLIPS valido (`defracta`, `desfrule`, `afirmar`, `retraer`, `impresion`). Se conserva como transcripcion del borrador original; para estudio se debe usar `codigo/clips/operaciones_numericas.clp`.
- `codigo/xmlbif/belief_arduino.xml`: se corrigieron inconsistencias estructurales del original, pero el significado del nodo `Node 4` queda pendiente porque no esta explicado en la fuente.
- Los PDFs escaneados de probabilidad tienen escritura manuscrita y baja legibilidad en algunas formulas; los resumenes deben verificarse contra el original si se usan para evaluacion formal.
