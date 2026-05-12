; Funciones CLIPS derivadas de los materiales "Deber 1 Clips" y "Fibonassi".

(deffunction fibonassi (?a)
  (if (or (= ?a 0) (= ?a 1)) then
    ?a
  else
    (+ (fibonassi (- ?a 1)) (fibonassi (- ?a 2)))))

(deffunction primo (?x)
  (if (< ?x 2) then
    (printout t "El numero no es primo" crlf)
  else
    (bind ?senal 0)
    (bind ?aux (- ?x 1))
    (loop-for-count (?i 2 ?aux)
      (if (= (mod ?x ?i) 0) then
        (bind ?senal 1)))
    (if (= ?senal 1) then
      (printout t "El numero no es primo" crlf)
    else
      (printout t "El numero es primo" crlf))))
