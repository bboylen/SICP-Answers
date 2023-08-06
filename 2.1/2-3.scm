(define (make-segment x y)
  (cons x y))

(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (make-point x y)
  (cons x y))

(define (x-point x) (car x))
(define (y-point x) (cdr x))


(define (make-rectangle a b c d)
  (cons (cons a b) (cons c d)))

(define (left-side r)
  (car (car r)))

(define (top-side r)
  (cdr (car r)))

(define (right-side r)
  (car (cdr r)))

(define (bottom-side r)
  (cdr (cdr r)))

(define (length side)
  (sqrt
    (+
      (square (- (x-point (start-segment side)) (x-point (end-segment side))))
      (square (- (y-point (start-segment side)) (y-point (end-segment side)))))))

(define (perimeter r)
  (+
    (length (left-side r))
    (length (top-side r))
    (length (right-side r))
    (length (bottom-side r))))

(define r (make-rectangle
          (make-segment (make-point 0 0) (make-point 0 2))
          (make-segment (make-point 0 2) (make-point 2 2))
          (make-segment (make-point 2 2) (make-point 2 0))
          (make-segment (make-point 2 0) (make-point 0 0))))


(define (area r)
  (*
    (length (left-side r))
    (length (top-side r))))

(display (perimeter r))
(newline)
(display (area r))
