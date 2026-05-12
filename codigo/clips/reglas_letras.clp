(deffacts MAIN::hechos-letras
  (H)
  (K))

(defrule MAIN::letras-b
  (B)
  =>
  (assert (D))
  (printout t "*Activa -- D --*" crlf))

(defrule MAIN::letras-h
  (H)
  =>
  (assert (A))
  (printout t "*Activa -- A --*" crlf))

(defrule MAIN::letras-a
  (A)
  =>
  (assert (E))
  (printout t "*Activa -- E --*" crlf))

(defrule MAIN::letras-eg
  (E)
  (G)
  =>
  (assert (C))
  (printout t "*Activa -- C --*" crlf))

(defrule MAIN::letras-ek
  (E)
  (K)
  =>
  (assert (B))
  (printout t "*Activa -- B --*" crlf))

(defrule MAIN::letras-dek
  (D)
  (E)
  (K)
  =>
  (assert (C))
  (printout t "*Activa -- C --*" crlf))

(defrule MAIN::letras-gkf
  (G)
  (K)
  (F)
  =>
  (assert (A))
  (printout t "*Activa -- A --*" crlf))
