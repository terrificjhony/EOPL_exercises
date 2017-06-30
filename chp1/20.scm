(define (count-occurence s slist)
  (cond ((null? slist)
	 0)
	((symbol? (car slist))
	 (if (eq? (car slist) s)
	     (+ 1 (count-occurence s (cdr slist)))
	     (count-occurence s (cdr slist))))
	(else
	 (+ (count-occurence s (car slist))
	    (count-occurence s (cdr slist))))))

(define i (count-occurence 'x '((f x) y ((x z) x))))
