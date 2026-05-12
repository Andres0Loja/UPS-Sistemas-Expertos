# Sistemas basados en reglas

Los ejemplos del repositorio usan CLIPS para representar conocimiento mediante hechos y reglas. Un hecho describe informacion disponible en la memoria de trabajo, por ejemplo `(H)`, `(K)` o `(progenitor-de Jorge Pablo)`. Una regla define condiciones y acciones: si las condiciones se cumplen, el motor de inferencia ejecuta la parte derecha de la regla y puede afirmar nuevos hechos.

## Componentes observados

- **Base de hechos**: aparece en `deffacts`, por ejemplo los hechos iniciales de letras o las relaciones familiares.
- **Base de conocimiento**: esta formada por reglas `defrule` y funciones `deffunction`.
- **Motor de inferencia**: CLIPS evalua las reglas disponibles contra los hechos y activa las que cumplan sus patrones.
- **Acciones de inferencia**: se usa `assert` para agregar conocimiento derivado y `printout` para mostrar resultados.

## Ejemplos organizados

### Reglas de letras

Archivo: `codigo/clips/reglas_letras.clp`.

El ejemplo parte de los hechos `(H)` y `(K)`. A partir de ellos se deriva:

- `H -> A`
- `A -> E`
- `E` y `K -> B`
- `B -> D`
- `D`, `E` y `K -> C`

Este ejercicio ilustra encadenamiento hacia adelante: cada hecho derivado puede activar nuevas reglas.

### Relaciones familiares

Archivo: `codigo/clips/relaciones_familiares.clp`.

El ejemplo define reglas para derivar relaciones como madre, padre, abuelo, abuela, hermanos, tios, sobrinos y primos a partir de hechos de genero, progenitores y matrimonios. La version organizada corrige errores de redaccion y dos inconsistencias evidentes del original:

- La regla de `abuela` ahora afirma `abuela-de`, no `abuelo-de`.
- La regla de `primo` usa el tio registrado en la relacion `tios`.

### Clasificacion de triangulos

Archivo: `codigo/clips/triangulos.clp`.

Clasifica triangulos por lados:

- tres lados iguales: equilatero;
- dos lados iguales: isosceles;
- ningun lado igual: escaleno.

Tambien clasifica por angulos:

- angulo de 90 grados: rectangulo;
- todos los angulos menores de 90 grados: acutangulo;
- un angulo mayor de 90 grados: obtusangulo.

El PDF original contiene errores de sintaxis (`prinout`) y parentesis incompletos; la version en `codigo/` esta corregida para estudio.

### Funciones numericas

Archivo: `codigo/clips/fibonacci_primo.clp`.

Incluye una funcion recursiva para calcular Fibonacci y una funcion para evaluar si un numero es primo. La funcion de primo conserva la intencion del material original y agrega una validacion para valores menores que 2.

### Operaciones numericas pendientes

Archivo: `codigo/clips/operaciones_numericas_pendiente.clp`.

El material original parece intentar ordenar un conjunto de valores, pero mezcla terminos que no son sintaxis CLIPS valida. Por esa razon se conserva como pendiente de revision.
