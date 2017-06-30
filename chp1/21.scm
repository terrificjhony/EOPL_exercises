(define (product sos1 sos2)
  (cond ((or (null? sos1) (null? sos2))
	 '())
	((symbol? sos1)
	 (cons (list sos1 (car sos2)) (product sos1 (cdr sos2)))) ;;;use list
	(else
	 (append (product (car sos1) sos2)    ;;;use append
		 (product (cdr sos1) sos2)))))
(display (product '(a b c) '(e f)))

