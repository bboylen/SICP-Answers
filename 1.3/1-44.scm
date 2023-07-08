(define dx 0.1)

(define (smooth f)
  (lambda (x)
  (/
    (+ (f (- x dx)) (f x) (f (+ x dx)))
    3)))

(define (repeated f n)
  (if (= n 0)
      (lambda (x) x)
      (compose f (repeated f (- n 1)))))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))