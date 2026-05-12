# Redes bayesianas XMLBIF

Una red bayesiana representa variables aleatorias y dependencias probabilisticas entre ellas. Es util cuando un sistema experto debe razonar con incertidumbre, por ejemplo para diagnostico, prediccion o apoyo a decisiones.

## Componentes

- **Nodo**: variable del problema.
- **Estado u outcome**: valor posible de una variable.
- **Arista o dependencia**: relacion probabilistica entre variables.
- **Tabla de probabilidad**: distribucion de una variable; si tiene padres, se interpreta como probabilidad condicional.

XMLBIF es un formato XML para describir este tipo de redes. En el repositorio hay dos modelos derivados de PDFs originales.

## Red candidatos-sueldo

Archivo: `codigo/xmlbif/candidatos_sueldo.xml`.

Variables:

- `Candidatos`: posibles valores `C`, `J`, `L`.
- `Sueldo`: posibles valores `S`, `N`.

Tablas:

- `P(Candidatos) = 0.4, 0.3, 0.3`.
- `P(Sueldo|Candidatos) = 0.15, 0.85, 0.2, 0.8, 0.65, 0.35`.

La red modela una dependencia directa: el sueldo depende del candidato.

## Red belief-arduino

Archivo: `codigo/xmlbif/belief_arduino.xml`.

Variables:

- `maquinas`: valores `M1`, `M2`, `M3`.
- `Azar`: valores `T`, `F`.
- `candidatos`: valores `Carlos`, `Juan`, `Luis`.
- `barajan`: valores `T`, `F`.
- `Node 4`: valores `T`, `F`.

Correcciones aplicadas sobre el material original:

- se normalizo `canditados` como `candidatos`;
- se agrego la variable `Azar`, porque el original tenia su tabla de probabilidad y la usaba como padre, pero no la declaraba.

Estas correcciones permiten que el XML sea estructuralmente coherente. Aun asi, el significado semantico de algunos nombres, como `Node 4`, queda pendiente de revision porque el PDF original no lo explica.

## Relacion con Sistemas Expertos

Una regla clasica puede expresar "si hay fiebre y tos, sospechar enfermedad". Una red bayesiana permite representar incertidumbre: por ejemplo, que una enfermedad aumente la probabilidad de un sintoma, pero no lo determine por completo. Por eso las redes bayesianas son una extension natural para sistemas expertos probabilisticos.
