(define (double-tree tree)
  (cond ((null? tree)
	 '())
	((leaf? tree)
	 (* 2 tree))
	(else
	 (interior-node (contents-of tree)
			(double-tree (lson tree))
			(double-tree (rson tree))))))
	 
