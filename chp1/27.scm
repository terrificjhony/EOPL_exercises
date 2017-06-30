(define (flatten slist)
  (cond ((null? slist)
	 '())
	((list? slist)
	 (append (flatten (car slist))
	       (flatten (cdr slist))))
	(else (list slist))))    ;;;transform the atom into list,so we can use *append* (only),to implement it.

(define i (flatten '((a) () (b ()) ())))
