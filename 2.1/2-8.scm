(define (make-interval a b) (cons a b))

(define (lower-bound interval)
  (max (car interval) (cdr interval)))

(define (upper-bound interval)
  (min (car interval) (cdr interval)))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))
