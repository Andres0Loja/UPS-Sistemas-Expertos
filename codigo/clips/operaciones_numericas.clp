; Ejemplo funcional de operaciones numericas en CLIPS.
; Reemplaza como material de estudio al borrador original conservado en
; operaciones_numericas_pendiente.clp.

(deffacts MAIN::numeros-iniciales
  (numero 1)
  (numero 2)
  (numero 3)
  (numero 4)
  (numero 5)
  (numero 6)
  (numero 7))

(defrule MAIN::mostrar-minimo
  (numero ?n)
  (not (numero ?m&:(< ?m ?n)))
  =>
  (printout t "Minimo: " ?n crlf))

(defrule MAIN::mostrar-maximo
  (numero ?n)
  (not (numero ?m&:(> ?m ?n)))
  =>
  (printout t "Maximo: " ?n crlf))

(defrule MAIN::mostrar-pares
  (numero ?n&:(= (mod ?n 2) 0))
  =>
  (printout t "Numero par: " ?n crlf))

(defrule MAIN::mostrar-impares
  (numero ?n&:(neq (mod ?n 2) 0))
  =>
  (printout t "Numero impar: " ?n crlf))
