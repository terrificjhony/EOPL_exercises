(define (list-set lst n x)
  (if (null? lst)
      '()
      (if (zero? n)
	  (cons x (cdr lst))
	  (cons (car lst)
		(list-set (cdr lst) (- n 1) x)))))

(define i (list-set (list 1 3 4 5 6) 4 (list 3 4 5 66)))
