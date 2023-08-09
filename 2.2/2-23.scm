(define (for-each proc lst)
  (if (null? lst)
      '()
      (begin
        (proc (car lst))
        (for-each proc (cdr lst)))))

(display (for-each (lambda (x) (newline) (display x))
          (list 57 321 88)))
