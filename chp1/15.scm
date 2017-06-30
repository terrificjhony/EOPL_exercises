(define (duple n x)
  (if (zero? n)
      '()
      (cons x (duple (- n 1) x))))

(define i (duple 3 8))
