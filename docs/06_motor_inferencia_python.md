# Motor de inferencia en Python

El archivo `codigo/python/motor_inferencia.py` implementa un motor minimo de encadenamiento hacia adelante. Su objetivo es didactico: mostrar con codigo Python los mismos conceptos que aparecen en los ejemplos CLIPS.

## Estructura del ejemplo

Cada regla tiene:

- un nombre;
- un conjunto de condiciones;
- una conclusion.

Si todas las condiciones estan en la memoria de trabajo, la regla se dispara y agrega su conclusion como nuevo hecho.

## Ejecucion

Desde la raiz del repositorio:

```bash
python codigo/python/motor_inferencia.py
```

Salida esperada:

```text
Traza de inferencia:
- Letras-H: ['H'] -> A
- Letras-A: ['A'] -> E
- Letras-EK: ['E', 'K'] -> B
- Letras-B: ['B'] -> D
- Letras-DEK: ['D', 'E', 'K'] -> C
Hechos finales: ['A', 'B', 'C', 'D', 'E', 'H', 'K']
```

## Uso como material de estudio

Este ejemplo permite observar tres ideas importantes:

- la memoria de trabajo cambia durante la ejecucion;
- una conclusion puede activar reglas posteriores;
- el proceso termina cuando ninguna regla puede agregar hechos nuevos.

El mismo patron se observa en `codigo/clips/reglas_letras.clp`, pero CLIPS ofrece un motor de reglas completo y especializado.
