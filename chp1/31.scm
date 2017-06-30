(define (leaf x) x)

(define (interior-node x lson rson)
  (list x lson rson))

(define (leaf? x)
  (number? x))

(define lson cadr)

(define rson cddr)

(define (comtents-of x)
  (cond ((null? x)
	 '())
	((leaf? x)
	 x)
	(else
	 (cons lson rson))))
