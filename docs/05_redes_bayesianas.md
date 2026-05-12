# Redes bayesianas XMLBIF

Los archivos `Arduino Jefe.pdf` y `Belief Arduino.pdf` contienen redes bayesianas descritas en XMLBIF. XMLBIF representa variables, resultados posibles y tablas de probabilidad condicional.

## Red candidatos-sueldo

Archivo derivado: `codigo/xmlbif/candidatos_sueldo.xml`.

Variables:

- `Candidatos`: posibles valores `C`, `J`, `L`.
- `Sueldo`: posibles valores `S`, `N`.

Tablas:

- `P(Candidatos) = 0.4, 0.3, 0.3`.
- `P(Sueldo|Candidatos) = 0.15, 0.85, 0.2, 0.8, 0.65, 0.35`.

La red modela una dependencia directa: el sueldo depende del candidato.

## Red belief-arduino pendiente

Archivo derivado: `codigo/xmlbif/belief_arduino_pendiente.xml`.

El material contiene variables relacionadas con maquinas, candidatos, barajar y un nodo adicional. Sin embargo, requiere revision antes de ejecutarse en una herramienta de redes bayesianas:

- aparece la variable `canditados`, pero las definiciones usan `candidatos`;
- se define una tabla para `Azar`, pero no aparece una variable `Azar` declarada;
- `Node 4` depende de `Azar`, por lo que tambien queda afectado por esa inconsistencia.

Se conserva como fuente de estudio porque muestra la estructura general de XMLBIF, pero no debe considerarse un modelo validado.
