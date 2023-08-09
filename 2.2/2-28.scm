(define x (list (list 1 2) (list 3 4)))

(define (fringe lst)
  (cond ((null? lst) '())
        ((not (pair? lst)) (list lst))
        (else (append (fringe (car lst)) (fringe (cdr lst))))))

(display (fringe x))
(newline)
(display (fringe (list x x)))
