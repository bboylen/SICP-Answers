(define (iterative-improve good-enough? improve)
  (define (iter guess)
          (if (good-enough? guess)
              guess
              (iter (improve guess))))
  iter)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt x)
  ((iterative-improve good-enough? improve) x))

(display (sqrt 4))




(define tolerance 0.00001)
(define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))

(define (fixed-point f first-guess)
  ((iterative-improve
   (lambda (x) (close-enough? x (f x)))
   f)
  first-guess))