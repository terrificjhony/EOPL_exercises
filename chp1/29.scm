(define (sort loi)
  (cond (((null? loi)
	  '())
	 (else
	  (search (car loi) (sort (cdr loi)))))))

(define (search x y)
  (if (null? y)
      (list x)
      (if (<= x (car y))
	  (cons (x y))
	  (cons (car y) (search x (cdr y))))))


(define i (sort '( 8 2 5 3 9)))
