(defrule MAIN::inicial
  (initial-fact)
  =>
  (printout t "Tipo de triangulo" crlf)
  (printout t "Opciones:" crlf)
  (printout t "1) Triangulo por lados" crlf)
  (printout t "2) Triangulo por angulos" crlf)
  (assert (opcion (read))))

(defrule MAIN::lados
  (opcion 1)
  =>
  (printout t "Escoja la opcion" crlf)
  (printout t "1) Triangulo de 3 lados iguales" crlf)
  (printout t "2) Triangulo de 2 lados iguales" crlf)
  (printout t "3) Triangulo sin lados iguales" crlf)
  (assert (numero-lados (read))))

(defrule MAIN::tres-lados
  (numero-lados 1)
  =>
  (printout t "Es un triangulo equilatero" crlf))

(defrule MAIN::dos-lados
  (numero-lados 2)
  =>
  (printout t "Es un triangulo isosceles" crlf))

(defrule MAIN::cero-lados
  (numero-lados 3)
  =>
  (printout t "Es un triangulo escaleno" crlf))

(defrule MAIN::angulos
  (opcion 2)
  =>
  (printout t "Escoja la opcion" crlf)
  (printout t "1) El triangulo tiene un angulo de 90 grados" crlf)
  (printout t "2) El triangulo tiene todos sus angulos menores de 90 grados" crlf)
  (printout t "3) El triangulo tiene un angulo mayor de 90 grados" crlf)
  (assert (grado-angulo (read))))

(defrule MAIN::rectangulo
  (grado-angulo 1)
  =>
  (printout t "El triangulo es rectangulo" crlf))

(defrule MAIN::acutangulo
  (grado-angulo 2)
  =>
  (printout t "El triangulo es acutangulo" crlf))

(defrule MAIN::obtusangulo
  (grado-angulo 3)
  =>
  (printout t "El triangulo es obtusangulo" crlf))
