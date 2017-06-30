(define (up lst)
  (cond ((null? lst)
	 '())
	((list? (car lst))
	 (append (car lst)    ;;;(cdr lst) is a list,so we can use *append* to merge.
		 (up (cdr lst))))
	(else
	 (cons (car lst)
	       (up (cdr lst))))))
	   
(define i (up '((1 2) (3 4))))
