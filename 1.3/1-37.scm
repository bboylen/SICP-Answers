(define (cont-frac n d k)
  (define (recurse i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (recurse (+ i 1))))))
  (recurse 1))



(define k 10)
(newline)
(display (cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k))


(define (cont-frac n d k)
   (define (iter i result)
     (if (= i 0)
         result
         (iter (- i 1) (/ (n i) (+ (d i) result)))))
   (iter k 0))
(newline)
(display (cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k))