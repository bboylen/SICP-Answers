(define (square-tree tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree sub-tree)
             (* sub-tree sub-tree)))
       tree))

(display (square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7))))

;(1 (4 (9 16) 25) (36 49))

(define (square-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))
(newline)
(display (square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7))))
