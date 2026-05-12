; Material conservado como pendiente de revision.
; El original parece intentar ordenar numeros, pero no usa sintaxis CLIPS valida.
; Terminos dudosos del original: defracta, desfrule, afirmar, retraer, impresion.

; Original transcrito:
; ( defracta  PRINCIPAL :: maximo
;    (vector 1 )
;    (vector 2 )
;    (vector 3 )
;    (vector 4 )
;    (vector 5 )
;    (vector 6 )
;    (vector 7 ))
;
; ( defrule  PRINCIPAL :: Pos
;    (vector ? x )
;    =>
;    ( afirmar (vector-aux ? x )))
;
; ( desfrule  PRINCIPAL :: ordena
;    ? f  <- (max vector-aux ? b  ? m1  ? m2 &: (< ? m2  ? m1 ) ? e )
;    =>
;    ( retraer  ? f )
;    ( afirmar (vector-aux ? b  ? m2  ? m1  ? e )))
;
; ( defrule  PRINCIPAL :: Imprime
;    ( no (vector-aux ? x  ? m1  ? m2 &: (< ? m2  ? m1 ) ? e ))
;    (vector ? y )
;    =>
;    ( impresion t "El orden es." "-" ? y crlf))
