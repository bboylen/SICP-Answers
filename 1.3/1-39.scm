(define (cont-frac n d k)
  (define (recurse i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (recurse (+ i 1))))))
  (recurse 1))

(define (tan-cf x k)
  (define (recurse i)
    (if (= i k)
        (- (* i 2) 1)
        (- (- (* i 2) 1) (/ (* x x) (recurse (+ i 1))))))
  (/ x (recurse 1)))