(define (filter-in pred lst)
  (if (null? lst)
      '()
      (if (pred (car lst))
	  (cons (car lst) (filter-in pred (cdr lst)))
	  (filter-in pred (cdr lst)))))
				     
      
(display (filter-in number? '(a 2 (1 3) b 7)))
