# Sistemas basados en reglas

Un sistema experto busca resolver problemas de un dominio especifico usando conocimiento representado de forma explicita. En este repositorio, la mayor parte del conocimiento se expresa como hechos y reglas de produccion al estilo de CLIPS.

## Arquitectura basica

- **Base de conocimiento**: conjunto de reglas, funciones y relaciones del dominio.
- **Memoria de trabajo**: conjunto de hechos activos durante la ejecucion.
- **Motor de inferencia**: componente que compara hechos con reglas y decide que reglas activar.
- **Modulo de explicacion**: mecanismo que permite entender por que se obtuvo una conclusion. En los ejemplos se representa mediante mensajes `printout` o trazas.
- **Adquisicion de conocimiento**: proceso de convertir informacion del dominio en reglas, hechos o probabilidades.

## Hechos y reglas

Un hecho representa informacion disponible:

```clips
(H)
(K)
(progenitor-de Jorge Pablo)
```

Una regla tiene condiciones a la izquierda y acciones a la derecha:

```clips
(defrule MAIN::letras-h
  (H)
  =>
  (assert (A))
  (printout t "*Activa -- A --*" crlf))
```

Si el hecho `(H)` existe, la regla afirma el nuevo hecho `(A)`.

## Encadenamiento hacia adelante

El encadenamiento hacia adelante parte de hechos iniciales y aplica reglas para derivar hechos nuevos. El ejemplo de letras parte de `(H)` y `(K)`:

```text
H -> A
A -> E
E + K -> B
B -> D
D + E + K -> C
```

Archivos relacionados:

- `codigo/clips/reglas_letras.clp`
- `codigo/python/motor_inferencia.py`

El ejemplo Python reproduce esta logica sin depender de CLIPS y muestra una traza de inferencia.

## Encadenamiento hacia atras

El encadenamiento hacia atras parte de una meta y busca demostrarla con reglas disponibles. Aunque los ejemplos del repositorio usan principalmente encadenamiento hacia adelante, el enfoque hacia atras seria util para responder preguntas como: "Que hechos necesito para probar `C`?". En ese caso, el sistema revisaria reglas que concluyen `C` y trataria de probar sus condiciones.

## Ejemplos del repositorio

### Reglas de letras

Archivo: `codigo/clips/reglas_letras.clp`.

Ilustra inferencia incremental: cada conclusion puede convertirse en condicion para otra regla.

### Relaciones familiares

Archivo: `codigo/clips/relaciones_familiares.clp`.

Deriva relaciones como madre, padre, abuelo, abuela, hermanos, tios, sobrinos y primos a partir de hechos de genero, progenitores y matrimonios. Este ejemplo muestra como una base de reglas puede ampliar conocimiento implicito.

### Clasificacion de triangulos

Archivo: `codigo/clips/triangulos.clp`.

Clasifica triangulos por lados y por angulos. Incluye funciones auxiliares para separar la logica de clasificacion de la interaccion por consola.

### Funciones numericas

Archivo: `codigo/clips/fibonacci_primo.clp`.

Incluye funciones para Fibonacci y numeros primos. Sirve para practicar `deffunction`, condicionales, ciclos y validacion de entradas.

### Operaciones numericas

Archivo funcional: `codigo/clips/operaciones_numericas.clp`.

Muestra reglas para identificar minimo, maximo, pares e impares dentro de una base de hechos numericos. El borrador original se conserva en `codigo/clips/operaciones_numericas_pendiente.clp`.

## Ejecucion esperada en CLIPS

Ejemplo general:

```clips
(load "codigo/clips/reglas_letras.clp")
(reset)
(run)
```

Este entorno no incluye CLIPS instalado, por lo que la validacion automatica se realizo sobre estructura de archivos, notebook, Python y XML. Los archivos `.clp` fueron revisados y corregidos para mantener sintaxis y proposito coherentes.
