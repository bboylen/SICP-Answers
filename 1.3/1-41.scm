(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

(display ((double inc) 3))

(display (((double (double double)) inc) 5))