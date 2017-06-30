;;; a little modification to 24.scm
(define (exist? pred lst)
  (if (null? lst)
      #f
      (if (pred (car lst))
	  #t
	  (exist? pred (cdr lst)))))
(exist? number? '(a a a 2 3 4 a))
