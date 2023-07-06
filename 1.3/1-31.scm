(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (identity x) x)

 (define (next x) (+ x 1))

 (define (factorial n)
 (product identity 1 next n))

(define (pi-term n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))

(define (wallis n)
  (product pi-term 1 next n))

(display (* (wallis 10) 4)) (newline)
(display (* (wallis 20) 4)) (newline)

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))