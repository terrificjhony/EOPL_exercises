(define (down lst)
  (if (null? lst)
      '()
      (cons (cons (car lst) '())
	    (down (cdr lst)))))

(define i (down '(1 2 3)))
