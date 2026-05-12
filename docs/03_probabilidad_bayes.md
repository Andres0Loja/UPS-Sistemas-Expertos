# Probabilidad y Bayes

Los sistemas expertos no siempre trabajan con reglas deterministas. En problemas con incertidumbre, pueden usar probabilidades para representar grados de creencia, evidencia incompleta o diagnosticos con margen de error.

## Probabilidad condicional

La probabilidad condicional mide la probabilidad de que ocurra un evento `B` sabiendo que ocurrio otro evento `A`:

```text
P(B|A) = P(A interseccion B) / P(A)
```

Esta formula solo es valida si `P(A) > 0`. En los apuntes manuscritos se aplican tablas de conteo y proporciones para calcular probabilidades condicionadas por genero, educacion, materias, uso de ropa y escenarios medicos.

## Regla multiplicativa

La regla multiplicativa permite calcular probabilidades conjuntas:

```text
P(A interseccion B) = P(A) * P(B|A)
```

Si los eventos son independientes, entonces `P(B|A) = P(B)` y se simplifica:

```text
P(A interseccion B) = P(A) * P(B)
```

Los apuntes escaneados incluyen ejercicios con cancer, fabricas, infecciones y contaminacion de rios. Algunas cifras son poco legibles, por lo que los documentos originales deben revisarse antes de usar resultados numericos como definitivos.

## Teorema de Bayes

Bayes permite actualizar una probabilidad previa cuando aparece evidencia nueva:

```text
P(A|B) = P(B|A) * P(A) / P(B)
```

Cuando solo se conocen `P(B|A)` y `P(B|no A)`, se calcula:

```text
P(B) = P(B|A) * P(A) + P(B|no A) * P(no A)
```

## Ejemplo del notebook

El notebook `notebooks/calculadora_bayes.ipynb` trabaja un caso de diagnostico medico:

- `P(C) = 0.05`: probabilidad previa de tener cancer.
- `P(D|C) = 0.78`: probabilidad de diagnostico positivo si la persona tiene cancer.
- `P(D|no C) = 0.06`: probabilidad de falso positivo.
- `P(D) = 0.096`: probabilidad total del diagnostico positivo.

Calculo:

```text
P(C|D) = (0.78 * 0.05) / 0.096
P(C|D) = 0.40625
```

Resultado: la probabilidad de que la persona realmente tenga cancer dado un diagnostico positivo es aproximadamente **40.63%**.

## Relacion con sistemas expertos

En un sistema experto medico, una regla podria indicar que cierto sintoma sugiere una enfermedad. Bayes permite ajustar esa conclusion cuando se conoce la frecuencia base de la enfermedad y la confiabilidad de la prueba. Esto evita interpretar una prueba positiva como certeza absoluta.
