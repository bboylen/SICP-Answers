(define (square-list items)
  (if (null? items)
      '()
      (cons (* (car items) (car items))
            (square-list (cdr items)))))

(define (square-list-map items)
  (map
    (lambda (x) (* x x))
    items))

(display (square-list (list 1 2 3 4)))
(newline)
(display (square-list-map (list 1 2 3 4)))
