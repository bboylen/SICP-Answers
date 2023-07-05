(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (term k)
    (* (cond ((or (= k 0) (= k n)) 1)
              ((odd? k) 4)
              (else 2))
        (y k)))
  (* (sum term 0 inc n)
     (/ h 3)))


(display (simpson cube 0 1 100)) (newline)
(display (simpson cube 0 1 1000)) (newline)