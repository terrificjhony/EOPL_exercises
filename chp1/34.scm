(define (path n bst)
  (if (null? bst)
      '()
      (error "surely you are joking~"))
  (cond ((= n (car bst))
	'())
	((< n (car bst))
	 (cons 'left (path n (cadr bst))))
	((> n (car bst))
	 (cons 'left (path n (cddr bst)))))))


(define i (path 17 ’(14 (7 () (12 () ())) (26 (20 (17 () ()) ()) (31 () ())))))
