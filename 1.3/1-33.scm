(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (filtered-accumulate combiner null-value term a next b filter?)
  (define (iter a result)
    (if (> a b)
        result
        (if (filter? a)
            (iter (next a) (combiner (term a) result))
            (iter (next a) result))))
  (iter a null-value))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (cond ((< n 2) #f)
        ((= n 2) #t)
        (else
          (let loop ((i 2))
            (cond ((> i (sqrt n)) #t)
                  ((divides? i n) #f)
                  (else (loop (+ i 1))))))))

(define (next x) (+ x 1))
(define (square x) (* x x))

(display (filtered-accumulate + 0 square 1 next 10 prime?))