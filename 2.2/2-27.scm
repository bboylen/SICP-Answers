(define (reverse l)
  (if (null? l)
      '()
      (append (reverse (cdr l)) (list (car l)))))

(define x (list (list 1 2) (list 3 4) (list 5 6)))

(define (deep-reverse l)
  (cond ((null? l) '())
        ((not (pair? l)) l)
        (else (list (deep-reverse (car (cdr l))) (deep-reverse (car l))))))

(display (deep-reverse x))

