# Probabilidad y Bayes

El material de probabilidad contiene ejercicios de probabilidad condicional, regla multiplicativa, independencia y teorema de Bayes. Parte del contenido esta en PDFs manuscritos y otra parte en el notebook `notebooks/calculadora_bayes.ipynb`.

## Probabilidad condicional

La probabilidad condicional mide la probabilidad de que ocurra un evento `B` sabiendo que ocurrio otro evento `A`:

```text
P(B|A) = P(A ∩ B) / P(A)
```

En los ejercicios manuscritos se aplican tablas de conteo y proporciones para obtener probabilidades condicionadas por genero, educacion, materias, uso de ropa y escenarios medicos.

## Regla multiplicativa

La regla multiplicativa permite calcular probabilidades conjuntas:

```text
P(A ∩ B) = P(A) * P(B|A)
```

Cuando los eventos se tratan como independientes, se usa:

```text
P(A ∩ B) = P(A) * P(B)
```

Los apuntes escaneados incluyen ejercicios con cancer, fabricas, infecciones y contaminacion de rios. Algunas cifras son poco legibles, por lo que los documentos originales deben revisarse antes de usar resultados numericos como definitivos.

## Teorema de Bayes

El notebook trabaja un caso de diagnostico medico:

- `P(C) = 0.05`: probabilidad previa de tener cancer.
- `P(D|C) = 0.78`: probabilidad de diagnostico positivo si la persona tiene cancer.
- `P(D|C') = 0.06`: probabilidad de diagnostico positivo si la persona no tiene cancer.
- `P(D) = 0.096`: probabilidad total del diagnostico positivo.

La probabilidad posterior se calcula asi:

```text
P(C|D) = (P(D|C) * P(C)) / P(D)
P(C|D) = (0.78 * 0.05) / 0.096 = 0.40625
```

Resultado: la probabilidad de que la persona realmente tenga cancer dado un diagnostico positivo es aproximadamente **40.63%**.

## Notebook corregido

El notebook original tenia una celda de codigo que recibia entradas como texto y no podia calcular correctamente. La version actual incluye una funcion `calcular_bayes` que recibe valores numericos y reproduce el ejercicio del documento.
