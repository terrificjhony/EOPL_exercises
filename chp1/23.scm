(define (list-index pred lst)
  (if (null? lst)
      #f
      (if (pred (car lst))
	  0
	  (+ 1 (list-index pred (cdr lst))))))

(list-index number? '(a a a 2 (1 3) b 7))
