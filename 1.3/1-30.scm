(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))

(display (sum-cubes 1 10)) (newline)
