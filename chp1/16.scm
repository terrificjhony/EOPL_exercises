(define (invert lst)
  (if (null? lst)
      '()
      (cons (cons (cadr (car lst)) (cons (car (car lst)) '()))
	    (invert (cdr lst)))))

(invert '((a 1) (a 2)))
