(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (last-pair l)
  (list-ref l (- (length l) 1)))
(display (last-pair (list 23 72 149 34)))
