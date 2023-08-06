(define (make-interval a b) (cons a b))

(define (lower-bound interval)
  (max (car interval) (cdr interval)))

(define (upper-bound interval)
  (min (car interval) (cdr interval)))
