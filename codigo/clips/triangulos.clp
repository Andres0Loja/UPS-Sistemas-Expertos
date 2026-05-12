(deffunction clasificar-por-lados (?lados-iguales)
  (if (= ?lados-iguales 3) then
    equilatero
  else
    (if (= ?lados-iguales 2) then
      isosceles
    else
      (if (= ?lados-iguales 0) then
        escaleno
      else
        valor-invalido))))

(deffunction clasificar-por-angulo (?tipo)
  (if (= ?tipo 90) then
    rectangulo
  else
    (if (= ?tipo 1) then
      acutangulo
    else
      (if (= ?tipo -1) then
        obtusangulo
      else
        valor-invalido))))

(deffacts MAIN::inicio
  (iniciar))

(defrule MAIN::inicial
  (iniciar)
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
  (printout t "Es un triangulo " (clasificar-por-lados 3) crlf))

(defrule MAIN::dos-lados
  (numero-lados 2)
  =>
  (printout t "Es un triangulo " (clasificar-por-lados 2) crlf))

(defrule MAIN::cero-lados
  (numero-lados 3)
  =>
  (printout t "Es un triangulo " (clasificar-por-lados 0) crlf))

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
  (printout t "El triangulo es " (clasificar-por-angulo 90) crlf))

(defrule MAIN::acutangulo
  (grado-angulo 2)
  =>
  (printout t "El triangulo es " (clasificar-por-angulo 1) crlf))

(defrule MAIN::obtusangulo
  (grado-angulo 3)
  =>
  (printout t "El triangulo es " (clasificar-por-angulo -1) crlf))
