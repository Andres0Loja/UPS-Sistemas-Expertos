(defrule MAIN::progenitor
  (padre-de ?padre ?hijo)
  (marido-de ?padre ?madre)
  =>
  (assert (progenitor-de ?madre ?hijo)))

(defrule MAIN::esposa
  (marido-de ?hombre ?mujer)
  =>
  (assert (esposa-de ?mujer ?hombre))
  (printout t ?mujer " es la esposa de " ?hombre crlf))

(defrule MAIN::padre
  (progenitor-de ?padre ?hijo)
  (hombre ?padre)
  =>
  (assert (padre-de ?padre ?hijo))
  (printout t ?padre " es padre de " ?hijo crlf))

(defrule MAIN::madre
  (progenitor-de ?madre ?hijo)
  (mujer ?madre)
  =>
  (assert (madre-de ?madre ?hijo))
  (printout t ?madre " es madre de " ?hijo crlf))

(defrule MAIN::abuelos
  (progenitor-de ?abuelo ?hijo)
  (progenitor-de ?hijo ?nieto)
  =>
  (assert (abuelos-de ?abuelo ?nieto)))

(defrule MAIN::abuelo
  (abuelos-de ?abuelo ?nieto)
  (hombre ?abuelo)
  =>
  (assert (abuelo-de ?abuelo ?nieto))
  (printout t ?abuelo " es el abuelo de " ?nieto crlf))

(defrule MAIN::abuela
  (abuelos-de ?abuela ?nieto)
  (mujer ?abuela)
  =>
  (assert (abuela-de ?abuela ?nieto))
  (printout t ?abuela " es la abuela de " ?nieto crlf))

(defrule MAIN::hermanos-padre
  (padre-de ?padre ?hijo1)
  (padre-de ?padre ?hijo2)
  (test (neq ?hijo1 ?hijo2))
  =>
  (assert (hermanos ?hijo1 ?hijo2)))

(defrule MAIN::hermanos-madre
  (madre-de ?madre ?hijo1)
  (madre-de ?madre ?hijo2)
  (test (neq ?hijo1 ?hijo2))
  =>
  (assert (hermanos ?hijo1 ?hijo2)))

(defrule MAIN::hermano
  (hermanos ?hijo1 ?hijo2)
  (hombre ?hijo1)
  =>
  (assert (hermano-de ?hijo1 ?hijo2))
  (printout t ?hijo1 " es hermano de " ?hijo2 crlf))

(defrule MAIN::hermana
  (hermanos ?hijo1 ?hijo2)
  (mujer ?hijo1)
  =>
  (assert (hermana-de ?hijo1 ?hijo2))
  (printout t ?hijo1 " es hermana de " ?hijo2 crlf))

(defrule MAIN::tios
  (progenitor-de ?padre ?hijo)
  (hermanos ?padre ?hermano)
  =>
  (assert (tios ?hermano ?hijo)))

(defrule MAIN::tio
  (tios ?tio ?sobrino)
  (hombre ?tio)
  =>
  (assert (tio-de ?tio ?sobrino))
  (printout t ?tio " es tio de " ?sobrino crlf))

(defrule MAIN::tia
  (tios ?tia ?sobrino)
  (mujer ?tia)
  =>
  (assert (tia-de ?tia ?sobrino))
  (printout t ?tia " es tia de " ?sobrino crlf))

(defrule MAIN::sobrino
  (tios ?tio ?sobrino)
  (hombre ?sobrino)
  =>
  (assert (sobrino-de ?sobrino ?tio))
  (printout t ?sobrino " es sobrino de " ?tio crlf))

(defrule MAIN::sobrina
  (tios ?tio ?sobrina)
  (mujer ?sobrina)
  =>
  (assert (sobrina-de ?sobrina ?tio))
  (printout t ?sobrina " es sobrina de " ?tio crlf))

(defrule MAIN::prima
  (tios ?tia ?sobrina)
  (progenitor-de ?tia ?prima)
  (mujer ?prima)
  =>
  (assert (prima-de ?prima ?sobrina))
  (printout t ?prima " es prima de " ?sobrina crlf))

(defrule MAIN::primo
  (tios ?tio ?sobrino)
  (progenitor-de ?tio ?primo)
  (hombre ?primo)
  =>
  (assert (primo-de ?primo ?sobrino))
  (printout t ?primo " es primo de " ?sobrino crlf))

(deffacts MAIN::inicio
  (hombre Andres)
  (hombre Pablo)
  (hombre Pedro)
  (hombre Jorge)
  (hombre Carlos)
  (mujer Paola)
  (mujer Pamela)
  (mujer Nicole)
  (mujer Carla)
  (mujer Juana)
  (progenitor-de Jorge Pablo)
  (progenitor-de Jorge Andres)
  (progenitor-de Nicole Juana)
  (marido-de Carlos Carla))
