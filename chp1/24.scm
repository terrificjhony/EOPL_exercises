(define (every? pred lst)
  (if (null? lst)
      #t
      (if (pred (car lst))
	  (every? pred (cdr lst))
	  #f)))

(every? number? '(2 3 4 a))
