(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))
(define (car x)
  (define (divide num)
    (if (> (modulo num 2) 0)
        0
        (+ 1 (divide (/ num 2)))))
  (divide x))

(define (cdr x)
  (define (divide num)
    (if (> (modulo num 3) 0)
        0
        (+ 1 (divide (/ num 3)))))
  (divide x))


(define a (cons 3 3))
(display a)
(newline)
(display (car a))
(newline)
(display (cdr a))
