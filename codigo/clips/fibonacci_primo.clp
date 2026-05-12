; Funciones CLIPS derivadas de los materiales "Deber 1 Clips" y "Fibonassi".
; La funcion original se llamaba "fibonassi"; se conserva como alias, pero se
; agrega "fibonacci" con la escritura correcta para usarla en nuevos ejemplos.

(deffunction fibonacci (?n)
  (if (< ?n 0) then
    (printout t "El indice debe ser mayor o igual que cero" crlf)
    FALSE
  else
    (if (or (= ?n 0) (= ?n 1)) then
      ?n
    else
      (+ (fibonacci (- ?n 1)) (fibonacci (- ?n 2))))))

(deffunction fibonassi (?n)
  (fibonacci ?n))

(deffunction es-primo (?x)
  (if (< ?x 2) then
    FALSE
  else
    (bind ?divisor 2)
    (while (<= (* ?divisor ?divisor) ?x) do
      (if (= (mod ?x ?divisor) 0) then
        (return FALSE))
      (bind ?divisor (+ ?divisor 1)))
    TRUE))

(deffunction primo (?x)
  (if (es-primo ?x) then
    (printout t "El numero es primo" crlf)
  else
    (printout t "El numero no es primo" crlf)))
